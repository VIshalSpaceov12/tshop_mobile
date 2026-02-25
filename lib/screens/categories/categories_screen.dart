import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme.dart';
import '../../models/category.dart';
import '../../providers/core_providers.dart';
import '../../widgets/error_view.dart';
import '../../widgets/loading_skeleton.dart';

final categoriesProvider =
    FutureProvider.autoDispose<CategoryListResponse>((ref) async {
  final repo = ref.watch(categoryRepositoryProvider);
  return repo.getCategories();
});

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoriesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: categoriesAsync.when(
        loading: () => _buildLoadingGrid(),
        error: (error, _) => ErrorView(
          message: 'Failed to load categories',
          onRetry: () => ref.invalidate(categoriesProvider),
        ),
        data: (response) => RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(categoriesProvider);
            // Wait for the provider to complete after invalidation
            await ref.read(categoriesProvider.future);
          },
          child: response.categories.isEmpty
              ? ListView(
                  children: const [
                    SizedBox(height: 200),
                    Center(
                      child: Text(
                        'No categories found',
                        style: TextStyle(
                          color: AppTheme.mutedText,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                )
              : GridView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.85,
                  ),
                  itemCount: response.categories.length,
                  itemBuilder: (context, index) {
                    final category = response.categories[index];
                    return _CategoryCard(category: category);
                  },
                ),
        ),
      ),
    );
  }

  Widget _buildLoadingGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.85,
      ),
      itemCount: 6,
      itemBuilder: (_, __) => const LoadingSkeleton(
        width: double.infinity,
        height: double.infinity,
        borderRadius: 12,
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final Category category;
  const _CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    final productCount = category.count?.products ?? 0;

    return GestureDetector(
      onTap: () => context.push('/products?category=${category.slug}'),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: category.image != null && category.image!.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: category.image!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      placeholder: (_, __) => Container(
                        color: Colors.grey.shade100,
                        child: const Center(
                          child: Icon(
                            Icons.category_outlined,
                            size: 40,
                            color: AppTheme.mutedText,
                          ),
                        ),
                      ),
                      errorWidget: (_, __, ___) => Container(
                        color: Colors.grey.shade100,
                        child: const Center(
                          child: Icon(
                            Icons.category_outlined,
                            size: 40,
                            color: AppTheme.mutedText,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppTheme.primaryYellow.withValues(alpha: 0.2),
                            AppTheme.primaryYellow.withValues(alpha: 0.05),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.category_outlined,
                          size: 40,
                          color: AppTheme.mutedText,
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppTheme.darkText,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '$productCount ${productCount == 1 ? 'Product' : 'Products'}',
                    style: const TextStyle(
                      color: AppTheme.mutedText,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
