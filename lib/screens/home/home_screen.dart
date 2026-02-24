import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme.dart';
import '../../providers/home_provider.dart';
import '../../widgets/error_view.dart';
import '../../widgets/loading_skeleton.dart';
import 'widgets/banner_carousel.dart';
import 'widgets/category_chips.dart';
import 'widgets/product_section.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeData = ref.watch(homeDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SHOP.',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: AppTheme.darkText,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Navigate to search
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {
              // TODO: Navigate to cart
            },
          ),
        ],
      ),
      body: homeData.when(
        loading: () => const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              // Banner skeleton
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: LoadingSkeleton(borderRadius: 12),
                ),
              ),
              SizedBox(height: 24),
              // Category skeleton
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    LoadingSkeleton(width: 80, height: 36, borderRadius: 20),
                    SizedBox(width: 8),
                    LoadingSkeleton(width: 80, height: 36, borderRadius: 20),
                    SizedBox(width: 8),
                    LoadingSkeleton(width: 80, height: 36, borderRadius: 20),
                  ],
                ),
              ),
              SizedBox(height: 24),
              HorizontalProductSkeleton(),
              SizedBox(height: 24),
              HorizontalProductSkeleton(),
            ],
          ),
        ),
        error: (error, _) => ErrorView(
          message: 'Failed to load home screen',
          onRetry: () => ref.invalidate(homeDataProvider),
        ),
        data: (data) => RefreshIndicator(
          onRefresh: () async => ref.invalidate(homeDataProvider),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // Banners
                BannerCarousel(banners: data.banners),
                const SizedBox(height: 24),
                // Categories
                CategoryChips(categories: data.categories),
                const SizedBox(height: 24),
                // New Arrivals
                ProductSection(
                  title: 'New Arrivals',
                  products: data.newArrivals,
                  seeAllRoute: '/products?sort=newest',
                ),
                const SizedBox(height: 24),
                // Trending Now
                ProductSection(
                  title: 'Trending Now',
                  products: data.trending,
                  seeAllRoute: '/products?sort=discount',
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
