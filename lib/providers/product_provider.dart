import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product.dart';
import 'core_providers.dart';

class ProductFilters {
  final String? search;
  final String? gender;
  final String? category;
  final String? sort;

  const ProductFilters({this.search, this.gender, this.category, this.sort});

  ProductFilters copyWith({
    String? search,
    String? gender,
    String? category,
    String? sort,
    bool clearSearch = false,
    bool clearGender = false,
    bool clearCategory = false,
    bool clearSort = false,
  }) {
    return ProductFilters(
      search: clearSearch ? null : (search ?? this.search),
      gender: clearGender ? null : (gender ?? this.gender),
      category: clearCategory ? null : (category ?? this.category),
      sort: clearSort ? null : (sort ?? this.sort),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilters &&
          search == other.search &&
          gender == other.gender &&
          category == other.category &&
          sort == other.sort;

  @override
  int get hashCode => Object.hash(search, gender, category, sort);
}

class ProductListState {
  final List<Product> products;
  final int currentPage;
  final int totalPages;
  final int total;
  final bool isLoading;
  final bool isLoadingMore;
  final String? error;
  final ProductFilters filters;

  const ProductListState({
    this.products = const [],
    this.currentPage = 0,
    this.totalPages = 0,
    this.total = 0,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.error,
    this.filters = const ProductFilters(),
  });

  bool get hasMore => currentPage < totalPages;

  ProductListState copyWith({
    List<Product>? products,
    int? currentPage,
    int? totalPages,
    int? total,
    bool? isLoading,
    bool? isLoadingMore,
    String? error,
    ProductFilters? filters,
    bool clearError = false,
  }) {
    return ProductListState(
      products: products ?? this.products,
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      total: total ?? this.total,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: clearError ? null : (error ?? this.error),
      filters: filters ?? this.filters,
    );
  }
}

class ProductListNotifier extends StateNotifier<ProductListState> {
  final Ref _ref;

  ProductListNotifier(this._ref, {ProductFilters? initialFilters})
      : super(ProductListState(filters: initialFilters ?? const ProductFilters())) {
    loadProducts();
  }

  Future<void> loadProducts() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final repo = _ref.read(productRepositoryProvider);
      final response = await repo.getProducts(
        page: 1,
        search: state.filters.search,
        gender: state.filters.gender,
        category: state.filters.category,
        sort: state.filters.sort,
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
    if (!state.hasMore || state.isLoadingMore) return;
    state = state.copyWith(isLoadingMore: true);
    try {
      final repo = _ref.read(productRepositoryProvider);
      final response = await repo.getProducts(
        page: state.currentPage + 1,
        search: state.filters.search,
        gender: state.filters.gender,
        category: state.filters.category,
        sort: state.filters.sort,
      );
      state = state.copyWith(
        products: [...state.products, ...response.products],
        currentPage: response.page,
        totalPages: response.pages,
        total: response.total,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false, error: e.toString());
    }
  }

  void updateFilters(ProductFilters filters) {
    state = state.copyWith(filters: filters, products: [], currentPage: 0);
    loadProducts();
  }

  Future<void> refresh() async {
    await loadProducts();
  }
}

final productListProvider = StateNotifierProvider.autoDispose
    .family<ProductListNotifier, ProductListState, ProductFilters>(
  (ref, filters) => ProductListNotifier(ref, initialFilters: filters),
);

final productDetailProvider = FutureProvider.autoDispose
    .family<ProductDetailResponse, String>((ref, slug) async {
  final repo = ref.watch(productRepositoryProvider);
  return repo.getProductBySlug(slug);
});
