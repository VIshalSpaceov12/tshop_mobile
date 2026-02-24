import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme.dart';
import '../../models/admin_category.dart';
import '../../providers/admin/admin_categories_provider.dart';
import '../../widgets/error_view.dart';
import '../../widgets/empty_view.dart';

class AdminCategoriesScreen extends ConsumerStatefulWidget {
  const AdminCategoriesScreen({super.key});

  @override
  ConsumerState<AdminCategoriesScreen> createState() =>
      _AdminCategoriesScreenState();
}

class _AdminCategoriesScreenState
    extends ConsumerState<AdminCategoriesScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(adminCategoriesProvider.notifier).loadCategories();
    });
  }

  Future<void> _confirmDelete(AdminCategory category) async {
    final productCount = category.countData?.products ?? 0;
    final childCount = category.countData?.children ?? 0;

    String warning = 'Are you sure you want to delete "${category.name}"?';
    if (productCount > 0 || childCount > 0) {
      final parts = <String>[];
      if (productCount > 0) parts.add('$productCount product${productCount == 1 ? '' : 's'}');
      if (childCount > 0) parts.add('$childCount subcategor${childCount == 1 ? 'y' : 'ies'}');
      warning += '\n\nThis category has ${parts.join(' and ')}.';
    }

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete Category'),
        content: Text(warning),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            style: TextButton.styleFrom(foregroundColor: AppTheme.error),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      final success = await ref
          .read(adminCategoriesProvider.notifier)
          .deleteCategory(category.id);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                success ? 'Category deleted' : 'Failed to delete category'),
            backgroundColor: success ? AppTheme.success : AppTheme.error,
          ),
        );
      }
    }
  }

  void _showCategoryForm({AdminCategory? category}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => _CategoryFormSheet(
        category: category,
        allCategories: ref.read(adminCategoriesProvider).categories,
        onSave: (data) async {
          bool success;
          if (category != null) {
            success = await ref
                .read(adminCategoriesProvider.notifier)
                .updateCategory(category.id, data);
          } else {
            success = await ref
                .read(adminCategoriesProvider.notifier)
                .createCategory(data);
          }
          if (!mounted) return;
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(success
                  ? (category != null
                      ? 'Category updated'
                      : 'Category created')
                  : 'Failed to save category'),
              backgroundColor: success ? AppTheme.success : AppTheme.error,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adminCategoriesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primaryYellow,
        foregroundColor: AppTheme.darkText,
        onPressed: () => _showCategoryForm(),
        child: const Icon(Icons.add),
      ),
      body: _buildBody(state),
    );
  }

  Widget _buildBody(AdminCategoriesState state) {
    if (state.isLoading && state.categories.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.categories.isEmpty) {
      return ErrorView(
        message: 'Failed to load categories',
        onRetry: () =>
            ref.read(adminCategoriesProvider.notifier).loadCategories(),
      );
    }

    if (state.categories.isEmpty) {
      return const EmptyView(
        icon: Icons.category_outlined,
        message: 'No categories yet',
      );
    }

    return RefreshIndicator(
      color: AppTheme.darkText,
      onRefresh: () =>
          ref.read(adminCategoriesProvider.notifier).loadCategories(),
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: state.categories.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final category = state.categories[index];
          return _CategoryCard(
            category: category,
            onEdit: () => _showCategoryForm(category: category),
            onDelete: () => _confirmDelete(category),
          );
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final AdminCategory category;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _CategoryCard({
    required this.category,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final productCount = category.countData?.products ?? 0;
    final childCount = category.countData?.children ?? 0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Category icon
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppTheme.primaryYellow.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.category_outlined,
                color: AppTheme.darkText,
                size: 22,
              ),
            ),
            const SizedBox(width: 12),

            // Category info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: AppTheme.darkText,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    category.slug,
                    style: const TextStyle(
                      color: AppTheme.mutedText,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      _buildBadge(
                        '$productCount product${productCount == 1 ? '' : 's'}',
                      ),
                      const SizedBox(width: 6),
                      if (childCount > 0)
                        _buildBadge(
                          '$childCount sub',
                        ),
                      if (category.parent != null) ...[
                        const SizedBox(width: 6),
                        _buildBadge(
                          'in ${category.parent!.name}',
                          color: Colors.blue.shade50,
                          textColor: Colors.blue.shade700,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),

            // Action buttons
            IconButton(
              icon: const Icon(Icons.edit_outlined, size: 20),
              color: AppTheme.mutedText,
              onPressed: onEdit,
              constraints: const BoxConstraints(),
              padding: const EdgeInsets.all(8),
            ),
            IconButton(
              icon: const Icon(Icons.delete_outline, size: 20),
              color: AppTheme.error,
              onPressed: onDelete,
              constraints: const BoxConstraints(),
              padding: const EdgeInsets.all(8),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge(String text, {Color? color, Color? textColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color ?? Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 11,
          color: textColor ?? Colors.grey.shade600,
        ),
      ),
    );
  }
}

class _CategoryFormSheet extends StatefulWidget {
  final AdminCategory? category;
  final List<AdminCategory> allCategories;
  final Future<void> Function(Map<String, dynamic> data) onSave;

  const _CategoryFormSheet({
    this.category,
    required this.allCategories,
    required this.onSave,
  });

  @override
  State<_CategoryFormSheet> createState() => _CategoryFormSheetState();
}

class _CategoryFormSheetState extends State<_CategoryFormSheet> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _imageController;
  String? _parentId;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _nameController =
        TextEditingController(text: widget.category?.name ?? '');
    _imageController =
        TextEditingController(text: widget.category?.image ?? '');
    _parentId = widget.category?.parentId;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _imageController.dispose();
    super.dispose();
  }

  Future<void> _handleSave() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSaving = true);

    final data = <String, dynamic>{
      'name': _nameController.text.trim(),
    };

    if (_imageController.text.trim().isNotEmpty) {
      data['image'] = _imageController.text.trim();
    }

    if (_parentId != null) {
      data['parentId'] = _parentId;
    }

    await widget.onSave(data);

    if (mounted) setState(() => _isSaving = false);
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.category != null;
    // Filter out the current category from parent options to prevent self-reference
    final parentOptions = widget.allCategories
        .where((c) => widget.category == null || c.id != widget.category!.id)
        .toList();

    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              isEditing ? 'Edit Category' : 'New Category',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppTheme.darkText,
              ),
            ),
            const SizedBox(height: 20),

            // Name
            const Text(
              'Name *',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppTheme.darkText,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _nameController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(hintText: 'Category name'),
              validator: (v) {
                if (v == null || v.trim().isEmpty) return 'Name is required';
                return null;
              },
            ),
            const SizedBox(height: 16),

            // Image URL
            const Text(
              'Image URL',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppTheme.darkText,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: _imageController,
              decoration: const InputDecoration(
                hintText: 'https://...',
                prefixIcon: Icon(Icons.image_outlined),
              ),
            ),
            const SizedBox(height: 16),

            // Parent dropdown
            const Text(
              'Parent Category',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppTheme.darkText,
              ),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String?>(
              value: _parentId,
              decoration:
                  const InputDecoration(hintText: 'None (top-level)'),
              items: [
                const DropdownMenuItem<String?>(
                  value: null,
                  child: Text('None (top-level)'),
                ),
                ...parentOptions.map(
                  (c) => DropdownMenuItem<String?>(
                    value: c.id,
                    child: Text(c.name),
                  ),
                ),
              ],
              onChanged: (v) => setState(() => _parentId = v),
            ),
            const SizedBox(height: 24),

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
                  : Text(isEditing ? 'Update Category' : 'Create Category'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
