import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/admin_product.dart';
import '../core_providers.dart';

part 'admin_products_provider.freezed.dart';

@freezed
abstract class AdminProductsState with _$AdminProductsState {
  const factory AdminProductsState({
    @Default([]) List<AdminProduct> products,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
    @Default(1) int currentPage,
    @Default(1) int totalPages,
    @Default(0) int total,
    String? searchQuery,
    String? statusFilter,
  }) = _AdminProductsState;
}

class AdminProductsNotifier extends StateNotifier<AdminProductsState> {
  final Ref _ref;
  AdminProductsNotifier(this._ref) : super(const AdminProductsState());

  Future<void> loadProducts({String? search, String? status}) async {
    state = state.copyWith(
      isLoading: true,
      error: null,
      searchQuery: search,
      statusFilter: status,
    );
    try {
      final repo = _ref.read(adminProductsRepositoryProvider);
      final response = await repo.getProducts(
        page: 1,
        search: search,
        status: status,
      );
      state = state.copyWith(
        products: response.products,
        currentPage: response.page,
        totalPages: response.pages,
        total: response.total,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || state.currentPage >= state.totalPages) return;
    state = state.copyWith(isLoadingMore: true);
    try {
      final repo = _ref.read(adminProductsRepositoryProvider);
      final response = await repo.getProducts(
        page: state.currentPage + 1,
        search: state.searchQuery,
        status: state.statusFilter,
      );
      state = state.copyWith(
        products: [...state.products, ...response.products],
        currentPage: response.page,
        totalPages: response.pages,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false, error: e.toString());
    }
  }

  Future<bool> deleteProduct(String id) async {
    try {
      final repo = _ref.read(adminProductsRepositoryProvider);
      await repo.deleteProduct(id);
      state = state.copyWith(
        products: state.products.where((p) => p.id != id).toList(),
        total: state.total - 1,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}

final adminProductsProvider =
    StateNotifierProvider.autoDispose<AdminProductsNotifier, AdminProductsState>((ref) {
  return AdminProductsNotifier(ref);
});

final adminProductDetailProvider = FutureProvider.autoDispose
    .family<AdminProduct, String>((ref, id) async {
  final repo = ref.watch(adminProductsRepositoryProvider);
  return repo.getProduct(id);
});
