import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/network/dio_client.dart';
import '../core/network/token_storage.dart';
import '../repositories/auth_repository.dart';
import '../repositories/product_repository.dart';
import '../repositories/category_repository.dart';
import '../repositories/banner_repository.dart';
import '../repositories/cart_repository.dart';
import '../repositories/wishlist_repository.dart';
import '../repositories/address_repository.dart';
import '../repositories/checkout_repository.dart';
import '../repositories/order_repository.dart';
import '../repositories/account_repository.dart';
import '../repositories/admin_products_repository.dart';
import '../repositories/admin_orders_repository.dart';
import '../repositories/admin_categories_repository.dart';
import '../repositories/admin_banners_repository.dart';
import '../repositories/admin_dashboard_repository.dart';

// SharedPreferences — initialized in main.dart before runApp
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Must be overridden in ProviderScope');
});

final tokenStorageProvider = Provider<TokenStorage>((ref) {
  return TokenStorage(ref.watch(sharedPreferencesProvider));
});

final dioClientProvider = Provider<DioClient>((ref) {
  return DioClient(ref.watch(tokenStorageProvider));
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.watch(dioClientProvider).dio);
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref.watch(dioClientProvider).dio);
});

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepository(ref.watch(dioClientProvider).dio);
});

final bannerRepositoryProvider = Provider<BannerRepository>((ref) {
  return BannerRepository(ref.watch(dioClientProvider).dio);
});

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository(ref.watch(dioClientProvider).dio);
});

final wishlistRepositoryProvider = Provider<WishlistRepository>((ref) {
  return WishlistRepository(ref.watch(dioClientProvider).dio);
});

final addressRepositoryProvider = Provider<AddressRepository>((ref) {
  return AddressRepository(ref.watch(dioClientProvider).dio);
});

final checkoutRepositoryProvider = Provider<CheckoutRepository>((ref) {
  return CheckoutRepository(ref.watch(dioClientProvider).dio);
});

final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepository(ref.watch(dioClientProvider).dio);
});

final accountRepositoryProvider = Provider<AccountRepository>((ref) {
  final dio = ref.watch(dioClientProvider).dio;
  return AccountRepository(dio);
});

final adminProductsRepositoryProvider = Provider<AdminProductsRepository>((ref) {
  return AdminProductsRepository(ref.watch(dioClientProvider).dio);
});

final adminOrdersRepositoryProvider = Provider<AdminOrdersRepository>((ref) {
  return AdminOrdersRepository(ref.watch(dioClientProvider).dio);
});

final adminCategoriesRepositoryProvider = Provider<AdminCategoriesRepository>((ref) {
  return AdminCategoriesRepository(ref.watch(dioClientProvider).dio);
});

final adminBannersRepositoryProvider = Provider<AdminBannersRepository>((ref) {
  return AdminBannersRepository(ref.watch(dioClientProvider).dio);
});

final adminDashboardRepositoryProvider = Provider<AdminDashboardRepository>((ref) {
  return AdminDashboardRepository(ref.watch(dioClientProvider).dio);
});
