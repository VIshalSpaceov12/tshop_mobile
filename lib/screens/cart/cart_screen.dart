import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme.dart';
import '../../providers/auth_provider.dart';
import '../../providers/cart_provider.dart';
import '../../widgets/empty_view.dart';
import '../../widgets/error_view.dart';
import 'widgets/cart_item_card.dart';
import 'widgets/cart_summary.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  void initState() {
    super.initState();
    // Load cart when screen is first shown
    Future.microtask(() {
      final authStatus = ref.read(authProvider).status;
      if (authStatus == AuthStatus.authenticated) {
        ref.read(cartProvider.notifier).loadCart();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final cartState = ref.watch(cartProvider);

    // Auth gate
    if (authState.status != AuthStatus.authenticated) {
      return Scaffold(
        appBar: AppBar(title: const Text('Cart')),
        body: EmptyView(
          icon: Icons.shopping_bag_outlined,
          message: 'Please login to view your cart',
          actionLabel: 'Login',
          onAction: () => context.go('/login'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart${cartState.itemCount > 0 ? ' (${cartState.itemCount})' : ''}',
        ),
      ),
      body: _buildBody(cartState),
    );
  }

  Widget _buildBody(CartState state) {
    if (state.isLoading && state.items.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.items.isEmpty) {
      return ErrorView(
        message: 'Failed to load cart',
        onRetry: () => ref.read(cartProvider.notifier).loadCart(),
      );
    }

    if (state.items.isEmpty) {
      return const EmptyView(
        icon: Icons.shopping_bag_outlined,
        message: 'Your cart is empty',
      );
    }

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: state.items.length,
            separatorBuilder: (_, __) => Divider(color: Colors.grey.shade200, height: 1),
            itemBuilder: (context, index) {
              final item = state.items[index];
              return Dismissible(
                key: ValueKey(item.id),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: AppTheme.error,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 24),
                  child: const Icon(Icons.delete_outline, color: Colors.white, size: 28),
                ),
                onDismissed: (_) {
                  ref.read(cartProvider.notifier).removeItem(item.id);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${item.product.name} removed')),
                  );
                },
                child: CartItemCard(
                  item: item,
                  onQuantityChanged: (qty) {
                    ref.read(cartProvider.notifier).updateQuantity(item.id, qty);
                  },
                  onRemove: () {
                    ref.read(cartProvider.notifier).removeItem(item.id);
                  },
                ),
              );
            },
          ),
        ),
        CartSummary(
          totalAmount: state.totalAmount,
          itemCount: state.itemCount,
        ),
      ],
    );
  }
}
