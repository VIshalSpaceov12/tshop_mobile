import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/order.dart';
import 'core_providers.dart';

part 'orders_provider.freezed.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState({
    @Default([]) List<Order> orders,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
    @Default(1) int currentPage,
    @Default(1) int totalPages,
  }) = _OrdersState;
}

class OrdersNotifier extends StateNotifier<OrdersState> {
  final Ref _ref;
  OrdersNotifier(this._ref) : super(const OrdersState());

  Future<void> loadOrders() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final repo = _ref.read(orderRepositoryProvider);
      final response = await repo.getOrders(page: 1);
      state = state.copyWith(
        orders: response.orders,
        currentPage: response.page,
        totalPages: response.pages,
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
      final repo = _ref.read(orderRepositoryProvider);
      final response = await repo.getOrders(page: state.currentPage + 1);
      state = state.copyWith(
        orders: [...state.orders, ...response.orders],
        currentPage: response.page,
        totalPages: response.pages,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false, error: e.toString());
    }
  }

  Future<bool> cancelOrder(String orderId) async {
    try {
      final repo = _ref.read(orderRepositoryProvider);
      await repo.cancelOrder(orderId);
      // Update the order status locally
      state = state.copyWith(
        orders: state.orders.map((o) {
          if (o.id == orderId) {
            return o.copyWith(status: 'CANCELLED');
          }
          return o;
        }).toList(),
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  void clear() {
    state = const OrdersState();
  }
}

final ordersProvider =
    StateNotifierProvider<OrdersNotifier, OrdersState>((ref) {
  return OrdersNotifier(ref);
});
