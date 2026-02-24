import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme.dart';
import '../../providers/address_provider.dart';
import '../../providers/cart_provider.dart';
import '../../providers/core_providers.dart';
import '../../widgets/error_view.dart';
import 'widgets/address_card.dart';
import 'widgets/address_form.dart';

class CheckoutScreen extends ConsumerStatefulWidget {
  const CheckoutScreen({super.key});

  @override
  ConsumerState<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends ConsumerState<CheckoutScreen> {
  String? _selectedAddressId;
  bool _isPlacingOrder = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(addressProvider.notifier).loadAddresses();
    });
  }

  void _selectDefaultAddress(AddressState state) {
    if (_selectedAddressId == null && state.addresses.isNotEmpty) {
      final defaultAddr = state.defaultAddress;
      if (defaultAddr != null) {
        _selectedAddressId = defaultAddr.id;
      }
    }
  }

  Future<void> _placeOrder() async {
    if (_selectedAddressId == null) return;
    setState(() => _isPlacingOrder = true);
    try {
      final repo = ref.read(checkoutRepositoryProvider);
      final response = await repo.checkout(_selectedAddressId!);
      // Clear cart after successful order
      ref.read(cartProvider.notifier).clear();
      if (mounted) {
        context.go('/order-success/${response.orderId}');
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isPlacingOrder = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to place order: ${e.toString()}')),
        );
      }
    }
  }

  void _showAddAddressSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => AddressForm(
        onSave: (data) => ref.read(addressProvider.notifier).createAddress(data),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final addressState = ref.watch(addressProvider);
    final cartState = ref.watch(cartProvider);

    _selectDefaultAddress(addressState);

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: addressState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : addressState.error != null && addressState.addresses.isEmpty
              ? ErrorView(
                  message: 'Failed to load addresses',
                  onRetry: () => ref.read(addressProvider.notifier).loadAddresses(),
                )
              : Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                              child: Text(
                                'Delivery Address',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.darkText,
                                ),
                              ),
                            ),
                            if (addressState.addresses.isEmpty)
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                                child: Text(
                                  'No addresses found. Add one to continue.',
                                  style: TextStyle(color: AppTheme.mutedText),
                                ),
                              ),
                            ...addressState.addresses.map((addr) => AddressCard(
                              address: addr,
                              isSelected: _selectedAddressId == addr.id,
                              onTap: () => setState(() => _selectedAddressId = addr.id),
                            )),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: OutlinedButton.icon(
                                onPressed: _showAddAddressSheet,
                                icon: const Icon(Icons.add),
                                label: const Text('Add New Address'),
                              ),
                            ),
                            const Divider(height: 32),
                            // Order summary
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Order Summary',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.darkText,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${cartState.itemCount} ${cartState.itemCount == 1 ? 'item' : 'items'}',
                                        style: const TextStyle(color: AppTheme.mutedText),
                                      ),
                                      Text(
                                        '\u20B9${cartState.totalAmount.toInt()}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Payment Method', style: TextStyle(color: AppTheme.mutedText)),
                                      Text('Cash on Delivery', style: TextStyle(fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Place order button
                    Container(
                      padding: EdgeInsets.only(
                        left: 16, right: 16,
                        top: 12,
                        bottom: MediaQuery.of(context).padding.bottom + 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 10,
                            offset: const Offset(0, -2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Total', style: TextStyle(fontSize: 16, color: AppTheme.mutedText)),
                              Text(
                                '\u20B9${cartState.totalAmount.toInt()}',
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: _selectedAddressId != null && !_isPlacingOrder ? _placeOrder : null,
                            child: _isPlacingOrder
                                ? const SizedBox(
                                    height: 20, width: 20,
                                    child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                                  )
                                : const Text('Place Order (COD)'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
    );
  }
}
