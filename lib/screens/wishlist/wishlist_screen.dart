import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/config.dart';
import '../../core/theme.dart';
import '../../models/wishlist.dart';
import '../../providers/auth_provider.dart';
import '../../providers/wishlist_provider.dart';
import '../../widgets/empty_view.dart';
import '../../widgets/error_view.dart';
import '../../widgets/price_tag.dart';

class WishlistScreen extends ConsumerStatefulWidget {
  const WishlistScreen({super.key});

  @override
  ConsumerState<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends ConsumerState<WishlistScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final authStatus = ref.read(authProvider).status;
      if (authStatus == AuthStatus.authenticated) {
        ref.read(wishlistProvider.notifier).loadWishlist();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final wishlistState = ref.watch(wishlistProvider);

    // Auth gate
    if (authState.status != AuthStatus.authenticated) {
      return Scaffold(
        appBar: AppBar(title: const Text('Wishlist')),
        body: EmptyView(
          icon: Icons.favorite_border,
          message: 'Please login to view your wishlist',
          actionLabel: 'Login',
          onAction: () => context.go('/login'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wishlist${wishlistState.items.isNotEmpty ? ' (${wishlistState.items.length})' : ''}',
        ),
      ),
      body: _buildBody(wishlistState),
    );
  }

  Widget _buildBody(WishlistState state) {
    if (state.isLoading && state.items.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.items.isEmpty) {
      return ErrorView(
        message: 'Failed to load wishlist',
        onRetry: () => ref.read(wishlistProvider.notifier).loadWishlist(),
      );
    }

    if (state.items.isEmpty) {
      return const EmptyView(
        icon: Icons.favorite_border,
        message: 'Your wishlist is empty',
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.55,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: state.items.length,
      itemBuilder: (context, index) {
        final item = state.items[index];
        return _WishlistCard(
          item: item,
          onRemove: () {
            ref.read(wishlistProvider.notifier).removeFromWishlist(item.product.id);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${item.product.name} removed from wishlist')),
            );
          },
          onTap: () => context.push('/products/${item.product.slug}'),
        );
      },
    );
  }
}

class _WishlistCard extends StatelessWidget {
  final WishlistItem item;
  final VoidCallback onRemove;
  final VoidCallback onTap;

  const _WishlistCard({
    required this.item,
    required this.onRemove,
    required this.onTap,
  });

  String? get _imageUrl {
    if (item.product.images != null && item.product.images!.isNotEmpty) {
      final primary = item.product.images!.where((i) => i.isPrimary).firstOrNull;
      final img = primary ?? item.product.images!.first;
      final url = img.url;
      if (url.startsWith('http')) return url;
      return '${AppConfig.baseImageUrl}$url';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  _imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: _imageUrl!,
                          fit: BoxFit.cover,
                          placeholder: (_, __) => Container(color: Colors.grey.shade100),
                          errorWidget: (_, __, ___) => Container(
                            color: Colors.grey.shade100,
                            child: const Icon(Icons.image_outlined, color: Colors.grey, size: 32),
                          ),
                        )
                      : Container(
                          color: Colors.grey.shade100,
                          child: const Icon(Icons.image_outlined, color: Colors.grey, size: 32),
                        ),
                  // Remove button
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: onRemove,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.9),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.close, size: 16, color: AppTheme.darkText),
                      ),
                    ),
                  ),
                  // Discount badge
                  if (item.product.discount > 0)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppTheme.success,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          '${item.product.discount.toInt()}% OFF',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.product.brand,
            style: const TextStyle(
              color: AppTheme.mutedText,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            item.product.name,
            style: const TextStyle(
              color: AppTheme.darkText,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          PriceTag(
            sellingPrice: item.product.sellingPrice,
            basePrice: item.product.basePrice,
            discount: item.product.discount,
          ),
        ],
      ),
    );
  }
}
