import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/admin_order.dart';
import '../core_providers.dart';

part 'admin_orders_provider.freezed.dart';

@freezed
abstract class AdminOrdersState with _$AdminOrdersState {
  const factory AdminOrdersState({
    @Default([]) List<AdminOrder> orders,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? error,
    @Default(1) int currentPage,
    @Default(1) int totalPages,
    @Default(0) int total,
    String? searchQuery,
    String? statusFilter,
  }) = _AdminOrdersState;
}

class AdminOrdersNotifier extends StateNotifier<AdminOrdersState> {
  final Ref _ref;
  AdminOrdersNotifier(this._ref) : super(const AdminOrdersState());

  Future<void> loadOrders({String? search, String? status}) async {
    state = state.copyWith(
      isLoading: true,
      error: null,
      searchQuery: search,
      statusFilter: status,
    );
    try {
      final repo = _ref.read(adminOrdersRepositoryProvider);
      final response = await repo.getOrders(
        page: 1,
        search: search,
        status: status,
      );
      state = state.copyWith(
        orders: response.orders,
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
      final repo = _ref.read(adminOrdersRepositoryProvider);
      final response = await repo.getOrders(
        page: state.currentPage + 1,
        search: state.searchQuery,
        status: state.statusFilter,
      );
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

  Future<bool> updateOrderStatus(String id, String status, {String? trackingNumber}) async {
    try {
      final repo = _ref.read(adminOrdersRepositoryProvider);
      final updated = await repo.updateOrderStatus(id, status: status, trackingNumber: trackingNumber);
      state = state.copyWith(
        orders: state.orders.map((o) => o.id == id ? updated : o).toList(),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}

final adminOrdersProvider =
    StateNotifierProvider.autoDispose<AdminOrdersNotifier, AdminOrdersState>((ref) {
  return AdminOrdersNotifier(ref);
});

final adminOrderDetailProvider = FutureProvider.autoDispose
    .family<AdminOrder, String>((ref, id) async {
  final repo = ref.watch(adminOrdersRepositoryProvider);
  return repo.getOrder(id);
});
