import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/auth_provider.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/home/home_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final isLoggedIn = authState.status == AuthStatus.authenticated;
      final isLoading = authState.status == AuthStatus.initial ||
          authState.status == AuthStatus.loading;
      final isAuthRoute = state.matchedLocation == '/login' ||
          state.matchedLocation == '/register';

      if (isLoading) return null;
      if (isAuthRoute && isLoggedIn) return '/';

      final protectedPrefixes = ['/cart', '/wishlist', '/checkout', '/orders', '/account'];
      final isProtected = protectedPrefixes.any((p) => state.matchedLocation.startsWith(p));

      if (isProtected && !isLoggedIn) return '/login';

      if (state.matchedLocation.startsWith('/admin')) {
        if (!isLoggedIn) return '/login';
        if (authState.user?.role != 'ADMIN') return '/';
      }

      return null;
    },
    routes: [
      GoRoute(path: '/', builder: (_, __) => const HomeScreen()),
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(path: '/register', builder: (_, __) => const RegisterScreen()),
      GoRoute(path: '/cart', builder: (_, __) => const _PlaceholderScreen(title: 'Cart')),
      GoRoute(path: '/wishlist', builder: (_, __) => const _PlaceholderScreen(title: 'Wishlist')),
      GoRoute(path: '/checkout', builder: (_, __) => const _PlaceholderScreen(title: 'Checkout')),
      GoRoute(path: '/orders', builder: (_, __) => const _PlaceholderScreen(title: 'Orders')),
      GoRoute(path: '/account', builder: (_, __) => const _PlaceholderScreen(title: 'Account')),
      GoRoute(path: '/products', builder: (_, __) => const _PlaceholderScreen(title: 'Products')),
      GoRoute(path: '/products/:slug', builder: (_, state) => _PlaceholderScreen(title: 'Product: ${state.pathParameters['slug']}')),
      GoRoute(path: '/admin', builder: (_, __) => const _PlaceholderScreen(title: 'Admin')),
    ],
  );
});

class _PlaceholderScreen extends StatelessWidget {
  final String title;
  const _PlaceholderScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title — Coming soon')),
    );
  }
}
