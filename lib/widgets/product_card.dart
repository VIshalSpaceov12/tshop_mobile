import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/config.dart';
import '../core/theme.dart';
import '../models/product.dart';
import 'price_tag.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double? width;

  const ProductCard({super.key, required this.product, this.width});

  String? get _imageUrl {
    if (product.images != null && product.images!.isNotEmpty) {
      final primary = product.images!.where((i) => i.isPrimary).firstOrNull;
      final img = primary ?? product.images!.first;
      final url = img.url;
      if (url.startsWith('http')) return url;
      return '${AppConfig.baseImageUrl}$url';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/products/${product.slug}'),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
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
                            placeholder: (context, url) => Container(
                              color: Colors.grey.shade100,
                              child: const Center(
                                child: Icon(Icons.image_outlined,
                                    color: Colors.grey, size: 32),
                              ),
                            ),
                            errorWidget: (context, url, error) => Container(
                              color: Colors.grey.shade100,
                              child: const Center(
                                child: Icon(Icons.broken_image_outlined,
                                    color: Colors.grey, size: 32),
                              ),
                            ),
                          )
                        : Container(
                            color: Colors.grey.shade100,
                            child: const Center(
                              child: Icon(Icons.image_outlined,
                                  color: Colors.grey, size: 32),
                            ),
                          ),
                    // Discount badge
                    if (product.discount > 0)
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppTheme.success,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '${product.discount.toInt()}% OFF',
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
            // Brand
            Text(
              product.brand,
              style: const TextStyle(
                color: AppTheme.mutedText,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            // Name
            Text(
              product.name,
              style: const TextStyle(
                color: AppTheme.darkText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            // Price
            PriceTag(
              sellingPrice: product.sellingPrice,
              basePrice: product.basePrice,
              discount: product.discount,
            ),
          ],
        ),
      ),
    );
  }
}
