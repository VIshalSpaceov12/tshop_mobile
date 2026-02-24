import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import '../../core/config.dart';
import '../../core/theme.dart';
import '../../models/admin_order.dart';
import '../../providers/admin/admin_orders_provider.dart';
import '../../widgets/error_view.dart';
import '../orders/widgets/order_status_badge.dart';

class AdminOrderDetailScreen extends ConsumerWidget {
  final String orderId;

  const AdminOrderDetailScreen({super.key, required this.orderId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderAsync = ref.watch(adminOrderDetailProvider(orderId));

    return Scaffold(
      appBar: AppBar(title: const Text('Order Details')),
      body: orderAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          message: 'Failed to load order details',
          onRetry: () => ref.invalidate(adminOrderDetailProvider(orderId)),
        ),
        data: (order) => _AdminOrderDetailBody(
          order: order,
          orderId: orderId,
        ),
      ),
    );
  }
}

class _AdminOrderDetailBody extends ConsumerStatefulWidget {
  final AdminOrder order;
  final String orderId;

  const _AdminOrderDetailBody({
    required this.order,
    required this.orderId,
  });

  @override
  ConsumerState<_AdminOrderDetailBody> createState() =>
      _AdminOrderDetailBodyState();
}

class _AdminOrderDetailBodyState extends ConsumerState<_AdminOrderDetailBody> {
  String? _selectedStatus;
  final _trackingController = TextEditingController();
  bool _isUpdating = false;

  /// Valid status transitions
  static const Map<String, List<String>> _transitions = {
    'PENDING': ['CONFIRMED', 'CANCELLED'],
    'CONFIRMED': ['SHIPPED', 'CANCELLED'],
    'SHIPPED': ['DELIVERED'],
    'DELIVERED': [],
    'CANCELLED': [],
  };

  List<String> get _availableStatuses {
    return _transitions[widget.order.status.toUpperCase()] ?? [];
  }

  @override
  void initState() {
    super.initState();
    if (widget.order.trackingNumber != null) {
      _trackingController.text = widget.order.trackingNumber!;
    }
  }

  @override
  void dispose() {
    _trackingController.dispose();
    super.dispose();
  }

  Future<void> _updateStatus() async {
    if (_selectedStatus == null) return;

    setState(() => _isUpdating = true);

    final success = await ref
        .read(adminOrdersProvider.notifier)
        .updateOrderStatus(
          widget.orderId,
          _selectedStatus!,
          trackingNumber: _trackingController.text.isNotEmpty
              ? _trackingController.text
              : null,
        );

    setState(() => _isUpdating = false);

    if (success) {
      ref.invalidate(adminOrderDetailProvider(widget.orderId));
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Order status updated successfully')),
        );
        setState(() => _selectedStatus = null);
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to update order status'),
            backgroundColor: AppTheme.error,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateStr =
        DateFormat('dd MMM yyyy, hh:mm a').format(widget.order.createdAt);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Order header
          _buildSection(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Order #${widget.order.id.substring(0, 8).toUpperCase()}',
                        style: const TextStyle(
                          color: AppTheme.darkText,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    OrderStatusBadge(status: widget.order.status),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  dateStr,
                  style: const TextStyle(
                    color: AppTheme.mutedText,
                    fontSize: 13,
                  ),
                ),
                if (widget.order.trackingNumber != null &&
                    widget.order.trackingNumber!.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    'Tracking: ${widget.order.trackingNumber}',
                    style: const TextStyle(
                      color: AppTheme.mutedText,
                      fontSize: 13,
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Customer info
          if (widget.order.user != null)
            _buildSection(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Customer',
                    style: TextStyle(
                      color: AppTheme.darkText,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.person_outline,
                          size: 18, color: Colors.grey.shade500),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          widget.order.user!.name ?? 'Unknown',
                          style: const TextStyle(
                            color: AppTheme.darkText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (widget.order.user!.email != null) ...[
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.email_outlined,
                            size: 18, color: Colors.grey.shade500),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            widget.order.user!.email!,
                            style: const TextStyle(
                              color: AppTheme.mutedText,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          if (widget.order.user != null) const SizedBox(height: 16),

          // Items section
          _buildSection(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Items (${widget.order.items.length})',
                  style: const TextStyle(
                    color: AppTheme.darkText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                ...widget.order.items.map((item) => _buildItemCard(item)),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // Delivery Address
          if (widget.order.address != null) ...[
            _buildSection(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Delivery Address',
                    style: TextStyle(
                      color: AppTheme.darkText,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (widget.order.address!.fullName != null)
                    Text(
                      widget.order.address!.fullName!,
                      style: const TextStyle(
                        color: AppTheme.darkText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  if (widget.order.address!.phone != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      widget.order.address!.phone!,
                      style: const TextStyle(
                        color: AppTheme.mutedText,
                        fontSize: 13,
                      ),
                    ),
                  ],
                  const SizedBox(height: 4),
                  Text(
                    _formatAddress(widget.order.address!),
                    style: const TextStyle(
                      color: AppTheme.mutedText,
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],

          // Payment Summary
          _buildSection(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Payment Summary',
                  style: TextStyle(
                    color: AppTheme.darkText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                _buildPaymentRow('Payment Method', widget.order.paymentMethod),
                const SizedBox(height: 8),
                _buildPaymentRow('Payment Status', widget.order.paymentStatus),
                const SizedBox(height: 12),
                Divider(color: Colors.grey.shade200),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total',
                      style: TextStyle(
                        color: AppTheme.darkText,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\u20B9${widget.order.totalAmount.toStringAsFixed(0)}',
                      style: const TextStyle(
                        color: AppTheme.darkText,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Status Update section
          if (_availableStatuses.isNotEmpty) ...[
            const SizedBox(height: 16),
            _buildSection(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Update Status',
                    style: TextStyle(
                      color: AppTheme.darkText,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    value: _selectedStatus,
                    hint: const Text(
                      'Select new status',
                      style: TextStyle(
                        color: AppTheme.mutedText,
                        fontSize: 14,
                      ),
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    items: _availableStatuses
                        .map((s) => DropdownMenuItem(
                              value: s,
                              child: Text(s),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() => _selectedStatus = value);
                    },
                  ),
                  if (_selectedStatus == 'SHIPPED') ...[
                    const SizedBox(height: 12),
                    TextField(
                      controller: _trackingController,
                      decoration: InputDecoration(
                        hintText: 'Tracking number (optional)',
                        hintStyle: const TextStyle(
                          color: AppTheme.mutedText,
                          fontSize: 14,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed:
                          _selectedStatus != null && !_isUpdating
                              ? _updateStatus
                              : null,
                      child: _isUpdating
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text('Update Status'),
                    ),
                  ),
                ],
              ),
            ),
          ],

          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSection({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: child,
    );
  }

  Widget _buildItemCard(AdminOrderItem item) {
    String? imageUrl;
    final images = item.variant.product.images;
    if (images.isNotEmpty) {
      final url = images.first.url;
      imageUrl = url.startsWith('http') ? url : '${AppConfig.baseImageUrl}$url';
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 64,
              height: 64,
              child: imageUrl != null
                  ? CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (_, __) =>
                          Container(color: Colors.grey.shade100),
                      errorWidget: (_, __, ___) => Container(
                        color: Colors.grey.shade100,
                        child: const Icon(Icons.image_outlined,
                            color: Colors.grey, size: 20),
                      ),
                    )
                  : Container(
                      color: Colors.grey.shade100,
                      child: const Icon(Icons.image_outlined,
                          color: Colors.grey, size: 20),
                    ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.variant.product.name,
                  style: const TextStyle(
                    color: AppTheme.darkText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  'Size: ${item.variant.size} \u2022 Color: ${item.variant.color}',
                  style: const TextStyle(
                    color: AppTheme.mutedText,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Qty: ${item.quantity} \u2022 \u20B9${item.price.toStringAsFixed(0)}',
                  style: const TextStyle(
                    color: AppTheme.darkText,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppTheme.mutedText,
            fontSize: 14,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: AppTheme.darkText,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  String _formatAddress(AdminOrderAddress address) {
    final parts = <String>[
      if (address.addressLine1 != null) address.addressLine1!,
      if (address.addressLine2 != null && address.addressLine2!.isNotEmpty)
        address.addressLine2!,
      if (address.city != null || address.state != null)
        [address.city, address.state].whereType<String>().join(', '),
      if (address.pincode != null) address.pincode!,
    ];
    return parts.join('\n');
  }
}
