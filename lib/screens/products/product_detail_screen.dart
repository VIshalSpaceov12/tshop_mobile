import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme.dart';
import '../../models/product.dart';
import '../../providers/product_provider.dart';
import '../../widgets/error_view.dart';
import '../../widgets/price_tag.dart';
import '../../widgets/product_card.dart';
import 'widgets/image_gallery.dart';
import 'widgets/size_selector.dart';
import 'widgets/color_selector.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  final String slug;

  const ProductDetailScreen({super.key, required this.slug});

  @override
  ConsumerState<ProductDetailScreen> createState() =>
      _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  String? _selectedSize;
  String? _selectedColor;

  @override
  Widget build(BuildContext context) {
    final detail = ref.watch(productDetailProvider(widget.slug));

    return Scaffold(
      body: detail.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          message: 'Failed to load product',
          onRetry: () =>
              ref.invalidate(productDetailProvider(widget.slug)),
        ),
        data: (data) => _buildContent(context, data),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ProductDetailResponse data) {
    final product = data.product;
    final variants = product.variants ?? [];

    // Extract unique colors
    final colorMap = <String, String>{};
    for (final v in variants) {
      colorMap[v.color] = v.colorHex;
    }
    final colors = colorMap.entries.toList();

    // Extract sizes for selected color (or all if no color selected)
    final filteredVariants = _selectedColor != null
        ? variants.where((v) => v.color == _selectedColor).toList()
        : variants;
    final sizes = filteredVariants.map((v) => v.size).toSet().toList();
    final outOfStockSizes = filteredVariants
        .where((v) => v.stock <= 0)
        .map((v) => v.size)
        .toSet();

    // Reset size if it's not available for the selected color
    if (_selectedSize != null && !sizes.contains(_selectedSize)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() => _selectedSize = null);
      });
    }

    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            // Image gallery
            SliverToBoxAdapter(
              child: ImageGallery(images: product.images ?? []),
            ),
            // Product info
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Brand
                    Text(
                      product.brand,
                      style: const TextStyle(
                        color: AppTheme.mutedText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Name
                    Text(
                      product.name,
                      style: const TextStyle(
                        color: AppTheme.darkText,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Price
                    PriceTag(
                      sellingPrice: product.sellingPrice,
                      basePrice: product.basePrice,
                      discount: product.discount,
                      fontSize: 18,
                    ),
                    const SizedBox(height: 16),
                    // Description
                    if (product.description != null &&
                        product.description!.isNotEmpty) ...[
                      Text(
                        product.description!,
                        style: const TextStyle(
                          color: AppTheme.mutedText,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                    // Color selector
                    if (colors.isNotEmpty) ...[
                      ColorSelector(
                        colors: colors,
                        selectedColor: _selectedColor,
                        onColorSelected: (color) {
                          setState(() {
                            _selectedColor = color;
                            _selectedSize = null;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                    // Size selector
                    if (sizes.isNotEmpty) ...[
                      SizeSelector(
                        sizes: sizes,
                        outOfStockSizes: outOfStockSizes,
                        selectedSize: _selectedSize,
                        onSizeSelected: (size) {
                          setState(() => _selectedSize = size);
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                    // Spacer for bottom button
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            // Similar products
            if (data.similarProducts.isNotEmpty) ...[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 8),
                  child: const Text(
                    'Similar Products',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.darkText,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 300,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: data.similarProducts.length,
                    separatorBuilder: (_, __) =>
                        const SizedBox(width: 12),
                    itemBuilder: (context, index) => ProductCard(
                      product: data.similarProducts[index],
                      width: 160,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 100)),
            ],
          ],
        ),
        // Back button
        Positioned(
          top: MediaQuery.of(context).padding.top + 8,
          left: 8,
          child: CircleAvatar(
            backgroundColor: Colors.white.withValues(alpha: 0.9),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: AppTheme.darkText),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
        // Wishlist button
        Positioned(
          top: MediaQuery.of(context).padding.top + 8,
          right: 8,
          child: CircleAvatar(
            backgroundColor: Colors.white.withValues(alpha: 0.9),
            child: IconButton(
              icon: Icon(
                data.isWishlisted
                    ? Icons.favorite
                    : Icons.favorite_border,
                color:
                    data.isWishlisted ? Colors.red : AppTheme.darkText,
              ),
              onPressed: () {
                // TODO: Toggle wishlist
              },
            ),
          ),
        ),
        // Add to Cart button
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).padding.bottom + 16,
              top: 12,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: _selectedSize != null
                  ? () {
                      // TODO: Add to cart
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Added to cart!')),
                      );
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.darkText,
                disabledBackgroundColor: Colors.grey.shade300,
                minimumSize: const Size(double.infinity, 52),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                _selectedSize != null
                    ? 'Add to Cart'
                    : 'Select a Size',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
