import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../core/config.dart';
import '../../core/theme.dart';
import '../../models/admin_order.dart';
import '../../providers/admin/admin_orders_provider.dart';
import '../../widgets/error_view.dart';
import '../../widgets/empty_view.dart';
import '../orders/widgets/order_status_badge.dart';

class AdminOrdersScreen extends ConsumerStatefulWidget {
  const AdminOrdersScreen({super.key});

  @override
  ConsumerState<AdminOrdersScreen> createState() => _AdminOrdersScreenState();
}

class _AdminOrdersScreenState extends ConsumerState<AdminOrdersScreen> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  Timer? _debounce;
  String? _selectedStatus;

  static const _statuses = [
    'All',
    'PENDING',
    'CONFIRMED',
    'SHIPPED',
    'DELIVERED',
    'CANCELLED',
  ];

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(adminOrdersProvider.notifier).loadOrders();
    });
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      ref.read(adminOrdersProvider.notifier).loadMore();
    }
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      ref.read(adminOrdersProvider.notifier).loadOrders(
            search: value.isEmpty ? null : value,
            status: _selectedStatus,
          );
    });
  }

  void _onStatusSelected(String status) {
    setState(() {
      _selectedStatus = status == 'All' ? null : status;
    });
    ref.read(adminOrdersProvider.notifier).loadOrders(
          search: _searchController.text.isEmpty
              ? null
              : _searchController.text,
          status: _selectedStatus,
        );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adminOrdersProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Manage Orders')),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: TextField(
              controller: _searchController,
              onChanged: _onSearchChanged,
              decoration: InputDecoration(
                hintText: 'Search by order ID, name, or email...',
                hintStyle: const TextStyle(
                  color: AppTheme.mutedText,
                  fontSize: 14,
                ),
                prefixIcon: const Icon(Icons.search, color: AppTheme.mutedText),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear, size: 20),
                        onPressed: () {
                          _searchController.clear();
                          _onSearchChanged('');
                        },
                      )
                    : null,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Status filter chips
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _statuses.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final status = _statuses[index];
                final isSelected = (_selectedStatus == null && status == 'All') ||
                    _selectedStatus == status;
                return FilterChip(
                  selected: isSelected,
                  label: Text(status),
                  labelStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                    color: isSelected ? AppTheme.darkText : AppTheme.mutedText,
                  ),
                  onSelected: (_) => _onStatusSelected(status),
                  showCheckmark: false,
                  selectedColor: AppTheme.primaryYellow,
                  backgroundColor: Colors.grey.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: BorderSide.none,
                );
              },
            ),
          ),
          const SizedBox(height: 8),

          // Orders list
          Expanded(child: _buildBody(state)),
        ],
      ),
    );
  }

  Widget _buildBody(AdminOrdersState state) {
    if (state.isLoading && state.orders.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null && state.orders.isEmpty) {
      return ErrorView(
        message: 'Failed to load orders',
        onRetry: () => ref.read(adminOrdersProvider.notifier).loadOrders(
              search: state.searchQuery,
              status: state.statusFilter,
            ),
      );
    }

    if (state.orders.isEmpty) {
      return const EmptyView(
        icon: Icons.receipt_long_outlined,
        message: 'No orders found',
      );
    }

    return RefreshIndicator(
      color: AppTheme.darkText,
      onRefresh: () => ref.read(adminOrdersProvider.notifier).loadOrders(
            search: state.searchQuery,
            status: state.statusFilter,
          ),
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
          return _AdminOrderCard(order: order);
        },
      ),
    );
  }
}

class _AdminOrderCard extends StatelessWidget {
  final AdminOrder order;

  const _AdminOrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    final dateStr = DateFormat('dd MMM yyyy, hh:mm a').format(order.createdAt);

    // Get first item image
    String? imageUrl;
    if (order.items.isNotEmpty) {
      final images = order.items.first.variant.product.images;
      if (images.isNotEmpty) {
        final url = images.first.url;
        imageUrl = url.startsWith('http') ? url : '${AppConfig.baseImageUrl}$url';
      }
    }

    final userName = order.user?.name ?? 'Unknown';
    final userEmail = order.user?.email ?? '';
    final itemCount = order.countData?.items ?? order.items.length;

    return GestureDetector(
      onTap: () => context.push('/admin/orders/${order.id}'),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          children: [
            // Product thumbnail
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 56,
                height: 56,
                child: imageUrl != null
                    ? CachedNetworkImage(
                        imageUrl: imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (_, __) =>
                            Container(color: Colors.grey.shade100),
                        errorWidget: (_, __, ___) => Container(
                          color: Colors.grey.shade100,
                          child: const Icon(Icons.receipt_long_outlined,
                              color: Colors.grey, size: 20),
                        ),
                      )
                    : Container(
                        color: Colors.grey.shade100,
                        child: const Icon(Icons.receipt_long_outlined,
                            color: Colors.grey, size: 20),
                      ),
              ),
            ),
            const SizedBox(width: 12),

            // Order info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '#${order.id.substring(0, 8).toUpperCase()}',
                          style: const TextStyle(
                            color: AppTheme.darkText,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      OrderStatusBadge(status: order.status),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$userName${userEmail.isNotEmpty ? ' \u2022 $userEmail' : ''}',
                    style: const TextStyle(
                      color: AppTheme.mutedText,
                      fontSize: 12,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$dateStr \u2022 $itemCount item${itemCount != 1 ? 's' : ''}',
                        style: const TextStyle(
                          color: AppTheme.mutedText,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        '\u20B9${order.totalAmount.toStringAsFixed(0)}',
                        style: const TextStyle(
                          color: AppTheme.darkText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
