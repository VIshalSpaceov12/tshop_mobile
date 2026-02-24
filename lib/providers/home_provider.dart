import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product.dart';
import '../models/category.dart';
import '../models/banner.dart';
import 'core_providers.dart';

class HomeData {
  final List<AppBanner> banners;
  final List<Category> categories;
  final List<Product> newArrivals;
  final List<Product> trending;

  HomeData({
    required this.banners,
    required this.categories,
    required this.newArrivals,
    required this.trending,
  });
}

final homeDataProvider = FutureProvider.autoDispose<HomeData>((ref) async {
  final productRepo = ref.watch(productRepositoryProvider);
  final categoryRepo = ref.watch(categoryRepositoryProvider);
  final bannerRepo = ref.watch(bannerRepositoryProvider);

  final results = await Future.wait([
    bannerRepo.getBanners(),
    categoryRepo.getCategories(),
    productRepo.getProducts(sort: 'newest', limit: 8),
    productRepo.getProducts(sort: 'discount', limit: 8),
  ]);

  return HomeData(
    banners: (results[0] as BannerListResponse).banners,
    categories: (results[1] as CategoryListResponse).categories,
    newArrivals: (results[2] as ProductListResponse).products,
    trending: (results[3] as ProductListResponse).products,
  );
});
