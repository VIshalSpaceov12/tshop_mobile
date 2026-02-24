import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme.dart';
import '../../models/admin_product.dart';
import '../../models/admin_category.dart';
import '../../providers/admin/admin_products_provider.dart';
import '../../providers/core_providers.dart';

class AdminProductFormScreen extends ConsumerStatefulWidget {
  final String? productId;

  const AdminProductFormScreen({super.key, this.productId});

  bool get isEditing => productId != null;

  @override
  ConsumerState<AdminProductFormScreen> createState() =>
      _AdminProductFormScreenState();
}

class _AdminProductFormScreenState
    extends ConsumerState<AdminProductFormScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isSaving = false;
  bool _isInitialized = false;

  late final TextEditingController _nameController;
  late final TextEditingController _brandController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _basePriceController;
  late final TextEditingController _sellingPriceController;

  String _gender = 'UNISEX';
  String _status = 'DRAFT';
  String? _categoryId;

  List<TextEditingController> _imageControllers = [];
  List<_VariantForm> _variants = [];
  List<AdminCategory> _categories = [];
  bool _categoriesLoaded = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _brandController = TextEditingController();
    _descriptionController = TextEditingController();
    _basePriceController = TextEditingController();
    _sellingPriceController = TextEditingController();

    if (!widget.isEditing) {
      _imageControllers.add(TextEditingController());
      _isInitialized = true;
    }

    Future.microtask(() => _loadCategories());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _brandController.dispose();
    _descriptionController.dispose();
    _basePriceController.dispose();
    _sellingPriceController.dispose();
    for (final c in _imageControllers) {
      c.dispose();
    }
    for (final v in _variants) {
      v.dispose();
    }
    super.dispose();
  }

  Future<void> _loadCategories() async {
    try {
      final repo = ref.read(adminCategoriesRepositoryProvider);
      final cats = await repo.getCategories();
      if (mounted) {
        setState(() {
          _categories = cats;
          _categoriesLoaded = true;
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() => _categoriesLoaded = true);
      }
    }
  }

  void _populateForm(AdminProduct product) {
    if (_isInitialized) return;
    _isInitialized = true;

    _nameController.text = product.name;
    _brandController.text = product.brand ?? '';
    _descriptionController.text = product.description ?? '';
    _basePriceController.text = product.basePrice.toStringAsFixed(0);
    _sellingPriceController.text = product.sellingPrice.toStringAsFixed(0);
    _gender = product.gender;
    _status = product.status;
    _categoryId = product.categoryId;

    // Populate images
    for (final c in _imageControllers) {
      c.dispose();
    }
    if (product.images.isNotEmpty) {
      _imageControllers =
          product.images.map((img) => TextEditingController(text: img.url)).toList();
    } else {
      _imageControllers = [TextEditingController()];
    }

    // Populate variants
    for (final v in _variants) {
      v.dispose();
    }
    _variants = product.variants.map((v) => _VariantForm.fromVariant(v)).toList();
  }

  void _addImage() {
    setState(() {
      _imageControllers.add(TextEditingController());
    });
  }

  void _removeImage(int index) {
    if (_imageControllers.length <= 1) return;
    setState(() {
      _imageControllers[index].dispose();
      _imageControllers.removeAt(index);
    });
  }

  void _addVariant() {
    setState(() {
      _variants.add(_VariantForm());
    });
  }

  void _removeVariant(int index) {
    setState(() {
      _variants[index].dispose();
      _variants.removeAt(index);
    });
  }

  Future<void> _handleSave() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSaving = true);

    final images = _imageControllers
        .where((c) => c.text.trim().isNotEmpty)
        .map((c) => {'url': c.text.trim()})
        .toList();

    final variants = _variants.map((v) => v.toMap()).toList();

    final data = {
      'name': _nameController.text.trim(),
      'brand': _brandController.text.trim().isNotEmpty
          ? _brandController.text.trim()
          : null,
      'description': _descriptionController.text.trim().isNotEmpty
          ? _descriptionController.text.trim()
          : null,
      'basePrice': double.tryParse(_basePriceController.text.trim()) ?? 0,
      'sellingPrice': double.tryParse(_sellingPriceController.text.trim()) ?? 0,
      'gender': _gender,
      'status': _status,
      'categoryId': _categoryId,
      'images': images,
      'variants': variants,
    };

    try {
      final repo = ref.read(adminProductsRepositoryProvider);
      if (widget.isEditing) {
        await repo.updateProduct(widget.productId!, data);
      } else {
        await repo.createProduct(data);
      }

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              widget.isEditing ? 'Product updated' : 'Product created'),
          backgroundColor: AppTheme.success,
        ),
      );

      // Refresh the products list
      ref.invalidate(adminProductsProvider);

      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to save product: $e'),
          backgroundColor: AppTheme.error,
        ),
      );
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.isEditing ? 'Edit Product' : 'New Product';

    // If editing, watch for the product detail
    if (widget.isEditing) {
      final productAsync = ref.watch(adminProductDetailProvider(widget.productId!));
      return productAsync.when(
        loading: () => Scaffold(
          appBar: AppBar(title: Text(title)),
          body: const Center(child: CircularProgressIndicator()),
        ),
        error: (err, _) => Scaffold(
          appBar: AppBar(title: Text(title)),
          body: Center(child: Text('Error loading product: $err')),
        ),
        data: (product) {
          _populateForm(product);
          return _buildFormScaffold(title);
        },
      );
    }

    return _buildFormScaffold(title);
  }

  Widget _buildFormScaffold(String title) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name
              _buildLabel('Name *'),
              const SizedBox(height: 8),
              TextFormField(
                controller: _nameController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(hintText: 'Product name'),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Name is required';
                  if (v.trim().length < 2) return 'Minimum 2 characters';
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Brand
              _buildLabel('Brand *'),
              const SizedBox(height: 8),
              TextFormField(
                controller: _brandController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(hintText: 'Brand name'),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Brand is required';
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Description
              _buildLabel('Description'),
              const SizedBox(height: 8),
              TextFormField(
                controller: _descriptionController,
                maxLines: 3,
                decoration: const InputDecoration(hintText: 'Product description'),
              ),
              const SizedBox(height: 20),

              // Prices row
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel('Base Price *'),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: _basePriceController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: '0',
                            prefixText: '\u20B9 ',
                          ),
                          validator: (v) {
                            if (v == null || v.trim().isEmpty) {
                              return 'Required';
                            }
                            if (double.tryParse(v.trim()) == null) {
                              return 'Invalid';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLabel('Selling Price *'),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: _sellingPriceController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: '0',
                            prefixText: '\u20B9 ',
                          ),
                          validator: (v) {
                            if (v == null || v.trim().isEmpty) {
                              return 'Required';
                            }
                            if (double.tryParse(v.trim()) == null) {
                              return 'Invalid';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Gender dropdown
              _buildLabel('Gender'),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: _gender,
                decoration: const InputDecoration(),
                items: const [
                  DropdownMenuItem(value: 'MEN', child: Text('Men')),
                  DropdownMenuItem(value: 'WOMEN', child: Text('Women')),
                  DropdownMenuItem(value: 'UNISEX', child: Text('Unisex')),
                ],
                onChanged: (v) {
                  if (v != null) setState(() => _gender = v);
                },
              ),
              const SizedBox(height: 20),

              // Status dropdown
              _buildLabel('Status'),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: _status,
                decoration: const InputDecoration(),
                items: const [
                  DropdownMenuItem(value: 'DRAFT', child: Text('Draft')),
                  DropdownMenuItem(value: 'ACTIVE', child: Text('Active')),
                  DropdownMenuItem(value: 'ARCHIVED', child: Text('Archived')),
                ],
                onChanged: (v) {
                  if (v != null) setState(() => _status = v);
                },
              ),
              const SizedBox(height: 20),

              // Category dropdown
              _buildLabel('Category'),
              const SizedBox(height: 8),
              _categoriesLoaded
                  ? DropdownButtonFormField<String?>(
                      value: _categoryId,
                      decoration: const InputDecoration(hintText: 'Select category'),
                      items: [
                        const DropdownMenuItem<String?>(
                          value: null,
                          child: Text('None'),
                        ),
                        ..._categories.map(
                          (c) => DropdownMenuItem<String?>(
                            value: c.id,
                            child: Text(c.name),
                          ),
                        ),
                      ],
                      onChanged: (v) => setState(() => _categoryId = v),
                    )
                  : const LinearProgressIndicator(),
              const SizedBox(height: 28),

              // Images section
              _buildSectionHeader('Images', onAdd: _addImage),
              const SizedBox(height: 8),
              ..._imageControllers.asMap().entries.map((entry) {
                final i = entry.key;
                final ctrl = entry.value;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: ctrl,
                          decoration: InputDecoration(
                            hintText: 'Image URL ${i + 1}',
                            prefixIcon: const Icon(Icons.image_outlined),
                          ),
                        ),
                      ),
                      if (_imageControllers.length > 1)
                        IconButton(
                          icon: const Icon(Icons.remove_circle_outline,
                              color: AppTheme.error),
                          onPressed: () => _removeImage(i),
                        ),
                    ],
                  ),
                );
              }),
              const SizedBox(height: 28),

              // Variants section
              _buildSectionHeader('Variants', onAdd: _addVariant),
              const SizedBox(height: 8),
              if (_variants.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'No variants added yet',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ..._variants.asMap().entries.map((entry) {
                final i = entry.key;
                final v = entry.value;
                return _buildVariantCard(v, i);
              }),
              const SizedBox(height: 32),

              // Save button
              ElevatedButton(
                onPressed: _isSaving ? null : _handleSave,
                child: _isSaving
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Text(widget.isEditing ? 'Update Product' : 'Create Product'),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppTheme.darkText,
      ),
    );
  }

  Widget _buildSectionHeader(String title, {VoidCallback? onAdd}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppTheme.darkText,
          ),
        ),
        if (onAdd != null)
          TextButton.icon(
            onPressed: onAdd,
            icon: const Icon(Icons.add, size: 18),
            label: const Text('Add'),
            style: TextButton.styleFrom(foregroundColor: AppTheme.darkText),
          ),
      ],
    );
  }

  Widget _buildVariantCard(_VariantForm variant, int index) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Variant ${index + 1}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.delete_outline,
                      color: AppTheme.error, size: 20),
                  onPressed: () => _removeVariant(index),
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: variant.sizeController,
                    decoration: const InputDecoration(
                      hintText: 'Size (S, M, L...)',
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: variant.colorController,
                    decoration: const InputDecoration(
                      hintText: 'Color name',
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: variant.colorHexController,
                    decoration: const InputDecoration(
                      hintText: '#000000',
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: variant.stockController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Stock qty',
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _VariantForm {
  final TextEditingController sizeController;
  final TextEditingController colorController;
  final TextEditingController colorHexController;
  final TextEditingController stockController;

  _VariantForm()
      : sizeController = TextEditingController(),
        colorController = TextEditingController(),
        colorHexController = TextEditingController(text: '#000000'),
        stockController = TextEditingController(text: '0');

  _VariantForm.fromVariant(AdminProductVariant v)
      : sizeController = TextEditingController(text: v.size),
        colorController = TextEditingController(text: v.color),
        colorHexController = TextEditingController(text: v.colorHex),
        stockController = TextEditingController(text: v.stock.toString());

  Map<String, dynamic> toMap() {
    return {
      'size': sizeController.text.trim(),
      'color': colorController.text.trim(),
      'colorHex': colorHexController.text.trim(),
      'stock': int.tryParse(stockController.text.trim()) ?? 0,
    };
  }

  void dispose() {
    sizeController.dispose();
    colorController.dispose();
    colorHexController.dispose();
    stockController.dispose();
  }
}
