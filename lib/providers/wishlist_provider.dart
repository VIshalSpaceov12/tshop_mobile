import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/wishlist.dart';
import 'core_providers.dart';

class WishlistState {
  final List<WishlistItem> items;
  final bool isLoading;
  final String? error;

  const WishlistState({
    this.items = const [],
    this.isLoading = false,
    this.error,
  });

  bool isWishlisted(String productId) {
    return items.any((item) => item.product.id == productId);
  }

  WishlistState copyWith({
    List<WishlistItem>? items,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return WishlistState(
      items: items ?? this.items,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

class WishlistNotifier extends StateNotifier<WishlistState> {
  final Ref _ref;

  WishlistNotifier(this._ref) : super(const WishlistState());

  Future<void> loadWishlist() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final repo = _ref.read(wishlistRepositoryProvider);
      final response = await repo.getWishlist();
      state = state.copyWith(
        items: response.items,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> toggleWishlist(String productId) async {
    try {
      final repo = _ref.read(wishlistRepositoryProvider);
      final response = await repo.toggleWishlist(productId);
      await loadWishlist();
      return response.wishlisted;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> removeFromWishlist(String productId) async {
    // Optimistically remove
    final previousItems = state.items;
    state = state.copyWith(
      items: state.items.where((i) => i.product.id != productId).toList(),
    );
    try {
      final repo = _ref.read(wishlistRepositoryProvider);
      await repo.removeFromWishlist(productId);
      return true;
    } catch (e) {
      state = state.copyWith(items: previousItems, error: e.toString());
      return false;
    }
  }

  void clear() {
    state = const WishlistState();
  }
}

final wishlistProvider = StateNotifierProvider<WishlistNotifier, WishlistState>((ref) {
  return WishlistNotifier(ref);
});
