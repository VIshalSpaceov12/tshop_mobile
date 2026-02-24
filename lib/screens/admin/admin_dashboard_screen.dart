import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme.dart';
import '../../providers/admin/admin_dashboard_provider.dart';
import '../../widgets/error_view.dart';

class AdminDashboardScreen extends ConsumerWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(adminDashboardProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: statsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => ErrorView(
          message: 'Failed to load dashboard',
          onRetry: () => ref.invalidate(adminDashboardProvider),
        ),
        data: (stats) => _DashboardBody(stats: stats),
      ),
    );
  }
}

class _DashboardBody extends StatelessWidget {
  final dynamic stats;

  const _DashboardBody({required this.stats});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dashboard',
            style: TextStyle(
              color: AppTheme.darkText,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),

          // 2x2 Grid of stat cards
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.6,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _StatCard(
                icon: Icons.inventory_2_outlined,
                iconColor: AppTheme.darkText,
                value: stats.totalProducts.toString(),
                label: 'Total Products',
              ),
              _StatCard(
                icon: Icons.check_circle_outline,
                iconColor: const Color(0xFF2E7D32),
                value: stats.activeProducts.toString(),
                label: 'Active Products',
              ),
              _StatCard(
                icon: Icons.receipt_long_outlined,
                iconColor: AppTheme.darkText,
                value: stats.totalOrders.toString(),
                label: 'Total Orders',
              ),
              _StatCard(
                icon: Icons.pending_actions,
                iconColor: const Color(0xFFE65100),
                value: stats.pendingOrders.toString(),
                label: 'Pending Orders',
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Revenue card (full width)
          _StatCard(
            icon: Icons.attach_money,
            iconColor: const Color(0xFF2E7D32),
            value: '\u20B9${stats.totalRevenue.toStringAsFixed(0)}',
            label: 'Total Revenue',
            large: true,
          ),
          const SizedBox(height: 12),

          // Row of two cards: Categories and Users
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  icon: Icons.category_outlined,
                  iconColor: const Color(0xFF1565C0),
                  value: stats.totalCategories.toString(),
                  label: 'Total Categories',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _StatCard(
                  icon: Icons.people_outline,
                  iconColor: const Color(0xFF7B1FA2),
                  value: stats.totalUsers.toString(),
                  label: 'Total Users',
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String value;
  final String label;
  final bool large;

  const _StatCard({
    required this.icon,
    required this.iconColor,
    required this.value,
    required this.label,
    this.large = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 32, color: iconColor),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              color: AppTheme.darkText,
              fontSize: large ? 28 : 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              color: AppTheme.mutedText,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
