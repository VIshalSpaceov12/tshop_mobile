import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'theme.dart';
import '../providers/auth_provider.dart';
import '../screens/auth/login_screen.dart';
import '../screens/auth/register_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/checkout/checkout_screen.dart';
import '../screens/checkout/order_success_screen.dart';
import '../screens/products/product_list_screen.dart';
import '../screens/products/product_detail_screen.dart';
import '../screens/wishlist/wishlist_screen.dart';
import '../screens/orders/orders_screen.dart';
import '../screens/orders/order_detail_screen.dart';
import '../screens/account/account_screen.dart';
import '../screens/account/edit_profile_screen.dart';
import '../screens/account/addresses_screen.dart';
import '../screens/admin/admin_dashboard_screen.dart';
import '../screens/admin/admin_orders_screen.dart';
import '../screens/admin/admin_order_detail_screen.dart';
import '../screens/admin/admin_products_screen.dart';
import '../screens/admin/admin_product_form_screen.dart';
import '../screens/admin/admin_categories_screen.dart';
import '../screens/admin/admin_banners_screen.dart';
import '../screens/categories/categories_screen.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>();
final _adminShellNavigatorKey = GlobalKey<NavigatorState>();
final _rootNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
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
      // Bottom navigation shell
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => _ScaffoldWithNav(child: child),
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => const NoTransitionPage(child: HomeScreen()),
          ),
          GoRoute(
            path: '/categories',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: CategoriesScreen(),
            ),
          ),
          GoRoute(
            path: '/cart',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: CartScreen(),
            ),
          ),
          GoRoute(
            path: '/wishlist',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: WishlistScreen(),
            ),
          ),
          GoRoute(
            path: '/account',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: AccountScreen(),
            ),
          ),
        ],
      ),
      // Routes without bottom nav
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(path: '/register', builder: (_, __) => const RegisterScreen()),
      GoRoute(
        path: '/products',
        builder: (_, state) => ProductListScreen(
          gender: state.uri.queryParameters['gender'],
          category: state.uri.queryParameters['category'],
          sort: state.uri.queryParameters['sort'],
          search: state.uri.queryParameters['search'],
        ),
      ),
      GoRoute(
        path: '/products/:slug',
        builder: (_, state) => ProductDetailScreen(
          slug: state.pathParameters['slug']!,
        ),
      ),
      GoRoute(path: '/checkout', builder: (_, __) => const CheckoutScreen()),
      GoRoute(
        path: '/order-success/:orderId',
        builder: (_, state) => OrderSuccessScreen(
          orderId: state.pathParameters['orderId']!,
        ),
      ),
      GoRoute(path: '/orders', builder: (_, __) => const OrdersScreen()),
      GoRoute(
        path: '/orders/:orderId',
        builder: (_, state) => OrderDetailScreen(
          orderId: state.pathParameters['orderId']!,
        ),
      ),
      GoRoute(path: '/account/edit', builder: (_, __) => const EditProfileScreen()),
      GoRoute(path: '/account/addresses', builder: (_, __) => const AddressesScreen()),
      // Admin shell with bottom nav
      ShellRoute(
        navigatorKey: _adminShellNavigatorKey,
        builder: (context, state, child) => _AdminScaffoldWithNav(child: child),
        routes: [
          GoRoute(
            path: '/admin',
            pageBuilder: (context, state) => const NoTransitionPage(child: AdminDashboardScreen()),
          ),
          GoRoute(
            path: '/admin/orders',
            pageBuilder: (context, state) => const NoTransitionPage(child: AdminOrdersScreen()),
          ),
          GoRoute(
            path: '/admin/products',
            pageBuilder: (context, state) => const NoTransitionPage(child: AdminProductsScreen()),
          ),
          GoRoute(
            path: '/admin/categories',
            pageBuilder: (context, state) => const NoTransitionPage(child: AdminCategoriesScreen()),
          ),
          GoRoute(
            path: '/admin/banners',
            pageBuilder: (context, state) => const NoTransitionPage(child: AdminBannersScreen()),
          ),
        ],
      ),
      // Admin routes without bottom nav
      GoRoute(
        path: '/admin/orders/:orderId',
        builder: (_, state) => AdminOrderDetailScreen(
          orderId: state.pathParameters['orderId']!,
        ),
      ),
      GoRoute(
        path: '/admin/products/new',
        builder: (_, __) => const AdminProductFormScreen(),
      ),
      GoRoute(
        path: '/admin/products/:productId',
        builder: (_, state) => AdminProductFormScreen(
          productId: state.pathParameters['productId'],
        ),
      ),
    ],
  );
});

class _ScaffoldWithNav extends StatelessWidget {
  final Widget child;
  const _ScaffoldWithNav({required this.child});

  static const _tabs = ['/', '/categories', '/cart', '/wishlist', '/account'];

  int _currentIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    final index = _tabs.indexOf(location);
    return index >= 0 ? index : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex(context),
        onTap: (index) => context.go(_tabs[index]),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined), activeIcon: Icon(Icons.grid_view), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), activeIcon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), activeIcon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}

class _AdminScaffoldWithNav extends StatelessWidget {
  final Widget child;
  const _AdminScaffoldWithNav({required this.child});

  static const _tabs = ['/admin', '/admin/orders', '/admin/products', '/admin/categories', '/admin/banners'];

  int _currentIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    final index = _tabs.indexOf(location);
    return index >= 0 ? index : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex(context),
        onTap: (index) => context.go(_tabs[index]),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.primaryYellow,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), activeIcon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long_outlined), activeIcon: Icon(Icons.receipt_long), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.inventory_2_outlined), activeIcon: Icon(Icons.inventory_2), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined), activeIcon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.panorama_outlined), activeIcon: Icon(Icons.panorama), label: 'Banners'),
        ],
      ),
    );
  }
}

