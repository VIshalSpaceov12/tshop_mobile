import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/auth_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    final isLoggedIn = authState.status == AuthStatus.authenticated;

    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: 'SHOP', style: TextStyle(fontWeight: FontWeight.w900)),
              TextSpan(text: '.', style: TextStyle(fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.primary)),
            ],
          ),
        ),
        actions: [
          if (isLoggedIn) ...[
            IconButton(icon: const Icon(Icons.person_outline), onPressed: () => context.push('/account')),
            IconButton(icon: const Icon(Icons.logout), onPressed: () => ref.read(authProvider.notifier).logout()),
          ] else
            TextButton(onPressed: () => context.push('/login'), child: const Text('Login')),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.store, size: 80, color: Colors.grey.shade300),
            const SizedBox(height: 16),
            Text('Home Screen', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(
              isLoggedIn ? 'Welcome, ${authState.user?.name ?? "User"}!' : 'Browse as guest or sign in',
              style: TextStyle(color: Colors.grey.shade600),
            ),
            const SizedBox(height: 24),
            if (isLoggedIn && authState.user?.role == 'ADMIN')
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: OutlinedButton.icon(
                  onPressed: () => context.push('/admin'),
                  icon: const Icon(Icons.admin_panel_settings),
                  label: const Text('Admin Panel'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
