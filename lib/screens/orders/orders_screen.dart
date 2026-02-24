import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme.dart';
import '../../providers/auth_provider.dart';
import '../../providers/orders_provider.dart';
import '../../widgets/empty_view.dart';
import '../../widgets/error_view.dart';
import 'widgets/order_card.dart';

class OrdersScreen extends ConsumerStatefulWidget {
  const OrdersScreen({super.key});

  @override
  ConsumerState<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends ConsumerState<OrdersScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final authStatus = ref.read(authProvider).status;
      if (authStatus == AuthStatus.authenticated) {
        ref.read(ordersProvider.notifier).loadOrders();
      }
    });
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(ordersProvider.notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final ordersState = ref.watch(ordersProvider);

    // Auth gate
    if (authState.status != AuthStatus.authenticated) {
      return Scaffold(
        appBar: AppBar(title: const Text('My Orders')),
        body: EmptyView(
          icon: Icons.lock_outlined,
          message: 'Please login to view your orders',
          actionLabel: 'Login',
          onAction: () => context.go('/login'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('My Orders')),
      body: _buildBody(ordersState),
    );
  }

  Widget _buildBody(OrdersState state) {
    if (state.isLoading && state.orders.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.orders.isEmpty) {
      return ErrorView(
        message: 'Failed to load orders',
        onRetry: () => ref.read(ordersProvider.notifier).loadOrders(),
      );
    }

    if (state.orders.isEmpty) {
      return EmptyView(
        icon: Icons.receipt_long_outlined,
        message: 'No orders yet',
        actionLabel: 'Start Shopping',
        onAction: () => context.go('/'),
      );
    }

    return RefreshIndicator(
      color: AppTheme.darkText,
      onRefresh: () => ref.read(ordersProvider.notifier).loadOrders(),
      child: ListView.separated(
        controller: _scrollController,
        padding: const EdgeInsets.all(16),
        itemCount: state.orders.length + (state.isLoadingMore ? 1 : 0),
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          if (index == state.orders.length) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final order = state.orders[index];
          return OrderCard(
            order: order,
            onTap: () => context.push('/orders/${order.id}'),
          );
        },
      ),
    );
  }
}
