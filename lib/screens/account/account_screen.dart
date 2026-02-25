import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme.dart';
import '../../providers/auth_provider.dart';
import '../../widgets/empty_view.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    // Auth gate
    if (authState.status != AuthStatus.authenticated) {
      return Scaffold(
        appBar: AppBar(title: const Text('Account')),
        body: EmptyView(
          icon: Icons.lock_outline,
          message: 'Please login to access your account',
          actionLabel: 'Login',
          onAction: () => context.push('/login'),
        ),
      );
    }

    final user = authState.user!;
    final initial = (user.name?.isNotEmpty == true)
        ? user.name![0].toUpperCase()
        : user.email[0].toUpperCase();

    return Scaffold(
      appBar: AppBar(title: const Text('Account')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile header section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppTheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: AppTheme.primaryYellow,
                    child: Text(
                      initial,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.darkText,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    user.name ?? 'No Name',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.darkText,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    user.email,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppTheme.mutedText,
                    ),
                  ),
                  if (user.phone != null && user.phone!.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      user.phone!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppTheme.mutedText,
                      ),
                    ),
                  ],
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => context.push('/account/edit'),
                      child: const Text('Edit Profile'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Menu section
            Container(
              decoration: BoxDecoration(
                color: AppTheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                children: [
                  _MenuTile(
                    icon: Icons.receipt_long_outlined,
                    title: 'My Orders',
                    onTap: () => context.push('/orders'),
                  ),
                  Divider(height: 1, color: Colors.grey.shade200),
                  _MenuTile(
                    icon: Icons.location_on_outlined,
                    title: 'My Addresses',
                    onTap: () => context.push('/account/addresses'),
                  ),
                  Divider(height: 1, color: Colors.grey.shade200),
                  _MenuTile(
                    icon: Icons.favorite_border,
                    title: 'My Wishlist',
                    onTap: () => context.push('/wishlist'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Logout section
            Container(
              decoration: BoxDecoration(
                color: AppTheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: _MenuTile(
                icon: Icons.logout,
                title: 'Logout',
                textColor: AppTheme.error,
                iconColor: AppTheme.error,
                onTap: () => _showLogoutDialog(context, ref),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              ref.read(authProvider.notifier).logout();
              context.go('/');
            },
            style: TextButton.styleFrom(foregroundColor: AppTheme.error),
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}

class _MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color? textColor;
  final Color? iconColor;

  const _MenuTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.textColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: iconColor ?? AppTheme.darkText),
      title: Text(
        title,
        style: TextStyle(
          color: textColor ?? AppTheme.darkText,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: iconColor ?? Colors.grey.shade400,
      ),
      onTap: onTap,
    );
  }
}
