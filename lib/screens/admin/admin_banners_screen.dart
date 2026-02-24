import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../core/theme.dart';
import '../../models/admin_banner.dart';
import '../../providers/admin/admin_banners_provider.dart';
import '../../widgets/error_view.dart';
import '../../widgets/empty_view.dart';

class AdminBannersScreen extends ConsumerStatefulWidget {
  const AdminBannersScreen({super.key});

  @override
  ConsumerState<AdminBannersScreen> createState() =>
      _AdminBannersScreenState();
}

class _AdminBannersScreenState extends ConsumerState<AdminBannersScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(adminBannersProvider.notifier).loadBanners();
    });
  }

  Future<void> _confirmDelete(AdminBanner banner) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Delete Banner'),
        content: Text('Are you sure you want to delete "${banner.title}"?'),
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
          .read(adminBannersProvider.notifier)
          .deleteBanner(banner.id);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(success ? 'Banner deleted' : 'Failed to delete banner'),
            backgroundColor: success ? AppTheme.success : AppTheme.error,
          ),
        );
      }
    }
  }

  void _showBannerForm({AdminBanner? banner}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => _BannerFormSheet(
        banner: banner,
        onSave: (data) async {
          bool success;
          if (banner != null) {
            success = await ref
                .read(adminBannersProvider.notifier)
                .updateBanner(banner.id, data);
          } else {
            success = await ref
                .read(adminBannersProvider.notifier)
                .createBanner(data);
          }
          if (!mounted) return;
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(success
                  ? (banner != null ? 'Banner updated' : 'Banner created')
                  : 'Failed to save banner'),
              backgroundColor: success ? AppTheme.success : AppTheme.error,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adminBannersProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Banners')),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primaryYellow,
        foregroundColor: AppTheme.darkText,
        onPressed: () => _showBannerForm(),
        child: const Icon(Icons.add),
      ),
      body: _buildBody(state),
    );
  }

  Widget _buildBody(AdminBannersState state) {
    if (state.isLoading && state.banners.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.banners.isEmpty) {
      return ErrorView(
        message: 'Failed to load banners',
        onRetry: () =>
            ref.read(adminBannersProvider.notifier).loadBanners(),
      );
    }

    if (state.banners.isEmpty) {
      return const EmptyView(
        icon: Icons.view_carousel_outlined,
        message: 'No banners yet',
      );
    }

    return RefreshIndicator(
      color: AppTheme.darkText,
      onRefresh: () =>
          ref.read(adminBannersProvider.notifier).loadBanners(),
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: state.banners.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final banner = state.banners[index];
          return _BannerCard(
            banner: banner,
            onEdit: () => _showBannerForm(banner: banner),
            onDelete: () => _confirmDelete(banner),
          );
        },
      ),
    );
  }
}

class _BannerCard extends StatelessWidget {
  final AdminBanner banner;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _BannerCard({
    required this.banner,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Banner image
          CachedNetworkImage(
            imageUrl: banner.image,
            width: double.infinity,
            height: 120,
            fit: BoxFit.cover,
            placeholder: (_, __) => Container(
              height: 120,
              color: Colors.grey.shade200,
              child: const Center(
                child: Icon(Icons.image, color: Colors.grey, size: 32),
              ),
            ),
            errorWidget: (_, __, ___) => Container(
              height: 120,
              color: Colors.grey.shade200,
              child: const Center(
                child: Icon(Icons.broken_image, color: Colors.grey, size: 32),
              ),
            ),
          ),

          // Banner info
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        banner.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: AppTheme.darkText,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      if (banner.link != null && banner.link!.isNotEmpty)
                        Text(
                          banner.link!,
                          style: const TextStyle(
                            color: AppTheme.mutedText,
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          // Active/inactive badge
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: banner.isActive
                                  ? AppTheme.success.withValues(alpha: 0.1)
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              banner.isActive ? 'Active' : 'Inactive',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: banner.isActive
                                    ? AppTheme.success
                                    : Colors.grey.shade600,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          // Sort order badge
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Order: ${banner.sortOrder}',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Action buttons
                Column(
                  children: [
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BannerFormSheet extends StatefulWidget {
  final AdminBanner? banner;
  final Future<void> Function(Map<String, dynamic> data) onSave;

  const _BannerFormSheet({
    this.banner,
    required this.onSave,
  });

  @override
  State<_BannerFormSheet> createState() => _BannerFormSheetState();
}

class _BannerFormSheetState extends State<_BannerFormSheet> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _titleController;
  late final TextEditingController _imageController;
  late final TextEditingController _linkController;
  late final TextEditingController _sortOrderController;
  String _position = 'home_top';
  bool _isActive = true;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _titleController =
        TextEditingController(text: widget.banner?.title ?? '');
    _imageController =
        TextEditingController(text: widget.banner?.image ?? '');
    _linkController =
        TextEditingController(text: widget.banner?.link ?? '');
    _sortOrderController = TextEditingController(
        text: (widget.banner?.sortOrder ?? 0).toString());
    _position = widget.banner?.position ?? 'home_top';
    _isActive = widget.banner?.isActive ?? true;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _imageController.dispose();
    _linkController.dispose();
    _sortOrderController.dispose();
    super.dispose();
  }

  Future<void> _handleSave() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSaving = true);

    final data = <String, dynamic>{
      'title': _titleController.text.trim(),
      'image': _imageController.text.trim(),
      'position': _position,
      'sortOrder': int.tryParse(_sortOrderController.text.trim()) ?? 0,
      'isActive': _isActive,
    };

    if (_linkController.text.trim().isNotEmpty) {
      data['link'] = _linkController.text.trim();
    }

    await widget.onSave(data);

    if (mounted) setState(() => _isSaving = false);
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.banner != null;

    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                isEditing ? 'Edit Banner' : 'New Banner',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.darkText,
                ),
              ),
              const SizedBox(height: 20),

              // Title
              _buildLabel('Title *'),
              const SizedBox(height: 8),
              TextFormField(
                controller: _titleController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(hintText: 'Banner title'),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Title is required';
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Image URL
              _buildLabel('Image URL *'),
              const SizedBox(height: 8),
              TextFormField(
                controller: _imageController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: 'https://...',
                  prefixIcon: Icon(Icons.image_outlined),
                ),
                validator: (v) {
                  if (v == null || v.trim().isEmpty) {
                    return 'Image URL is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Link
              _buildLabel('Link'),
              const SizedBox(height: 8),
              TextFormField(
                controller: _linkController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: '/products/category-slug (optional)',
                  prefixIcon: Icon(Icons.link),
                ),
              ),
              const SizedBox(height: 16),

              // Position
              _buildLabel('Position'),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: _position,
                decoration: const InputDecoration(),
                items: const [
                  DropdownMenuItem(value: 'home_top', child: Text('Home Top')),
                  DropdownMenuItem(
                      value: 'home_middle', child: Text('Home Middle')),
                  DropdownMenuItem(
                      value: 'home_bottom', child: Text('Home Bottom')),
                ],
                onChanged: (v) {
                  if (v != null) setState(() => _position = v);
                },
              ),
              const SizedBox(height: 16),

              // Sort Order
              _buildLabel('Sort Order'),
              const SizedBox(height: 8),
              TextFormField(
                controller: _sortOrderController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: '0'),
              ),
              const SizedBox(height: 16),

              // Is Active switch
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildLabel('Active'),
                  Switch(
                    value: _isActive,
                    activeColor: AppTheme.success,
                    onChanged: (v) => setState(() => _isActive = v),
                  ),
                ],
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
                    : Text(isEditing ? 'Update Banner' : 'Create Banner'),
              ),
              const SizedBox(height: 8),
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
}
