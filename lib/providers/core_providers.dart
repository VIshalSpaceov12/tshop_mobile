import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/network/dio_client.dart';
import '../core/network/token_storage.dart';
import '../repositories/auth_repository.dart';
import '../repositories/product_repository.dart';
import '../repositories/category_repository.dart';
import '../repositories/banner_repository.dart';

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
