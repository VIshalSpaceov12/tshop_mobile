import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/cart.dart';
import 'core_providers.dart';

class CartState {
  final List<CartItem> items;
  final int itemCount;
  final bool isLoading;
  final String? error;

  const CartState({
    this.items = const [],
    this.itemCount = 0,
    this.isLoading = false,
    this.error,
  });

  double get totalAmount {
    return items.fold(0.0, (sum, item) => sum + (item.product.sellingPrice * item.quantity));
  }

  CartState copyWith({
    List<CartItem>? items,
    int? itemCount,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return CartState(
      items: items ?? this.items,
      itemCount: itemCount ?? this.itemCount,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

class CartNotifier extends StateNotifier<CartState> {
  final Ref _ref;

  CartNotifier(this._ref) : super(const CartState());

  Future<void> loadCart() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final repo = _ref.read(cartRepositoryProvider);
      final response = await repo.getCart();
      state = state.copyWith(
        items: response.items,
        itemCount: response.itemCount,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> addToCart(String variantId, {int quantity = 1}) async {
    try {
      final repo = _ref.read(cartRepositoryProvider);
      await repo.addToCart(variantId: variantId, quantity: quantity);
      await loadCart();
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> updateQuantity(String itemId, int quantity) async {
    try {
      final repo = _ref.read(cartRepositoryProvider);
      await repo.updateQuantity(itemId, quantity);
      await loadCart();
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> removeItem(String itemId) async {
    // Optimistically remove
    final previousItems = state.items;
    final previousCount = state.itemCount;
    state = state.copyWith(
      items: state.items.where((i) => i.id != itemId).toList(),
      itemCount: state.itemCount - 1,
    );
    try {
      final repo = _ref.read(cartRepositoryProvider);
      await repo.removeItem(itemId);
      return true;
    } catch (e) {
      // Rollback on failure
      state = state.copyWith(items: previousItems, itemCount: previousCount, error: e.toString());
      return false;
    }
  }

  void clear() {
    state = const CartState();
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, CartState>((ref) {
  return CartNotifier(ref);
});
