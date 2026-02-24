import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user.dart';
import 'cart_provider.dart';
import 'core_providers.dart';
import 'wishlist_provider.dart';

enum AuthStatus { initial, authenticated, unauthenticated, loading }

class AuthState {
  final AuthStatus status;
  final User? user;
  final String? error;

  const AuthState({
    this.status = AuthStatus.initial,
    this.user,
    this.error,
  });

  AuthState copyWith({AuthStatus? status, User? user, String? error}) {
    return AuthState(
      status: status ?? this.status,
      user: user ?? this.user,
      error: error,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  final Ref _ref;

  AuthNotifier(this._ref) : super(const AuthState()) {
    _tryRestoreSession();
  }

  void _loadUserData() {
    _ref.read(cartProvider.notifier).loadCart();
    _ref.read(wishlistProvider.notifier).loadWishlist();
  }

  Future<void> _tryRestoreSession() async {
    final tokenStorage = _ref.read(tokenStorageProvider);
    if (!tokenStorage.hasToken) {
      state = const AuthState(status: AuthStatus.unauthenticated);
      return;
    }

    try {
      final authRepo = _ref.read(authRepositoryProvider);
      final user = await authRepo.getAccount();
      state = AuthState(status: AuthStatus.authenticated, user: user);
      _loadUserData();
    } catch (_) {
      await tokenStorage.clear();
      state = const AuthState(status: AuthStatus.unauthenticated);
    }
  }

  Future<void> login({required String email, required String password}) async {
    state = state.copyWith(status: AuthStatus.loading, error: null);
    try {
      final authRepo = _ref.read(authRepositoryProvider);
      final tokenStorage = _ref.read(tokenStorageProvider);

      final authResponse = await authRepo.login(email: email, password: password);
      await tokenStorage.saveTokens(
        token: authResponse.token,
        refreshToken: authResponse.refreshToken,
      );

      state = AuthState(status: AuthStatus.authenticated, user: authResponse.user);
      _loadUserData();
    } on DioException catch (e) {
      final message = e.response?.data?['error'] ?? 'Login failed';
      state = state.copyWith(status: AuthStatus.unauthenticated, error: message);
    }
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    state = state.copyWith(status: AuthStatus.loading, error: null);
    try {
      final authRepo = _ref.read(authRepositoryProvider);
      final tokenStorage = _ref.read(tokenStorageProvider);

      final authResponse = await authRepo.register(
        name: name,
        email: email,
        password: password,
      );
      await tokenStorage.saveTokens(
        token: authResponse.token,
        refreshToken: authResponse.refreshToken,
      );

      state = AuthState(status: AuthStatus.authenticated, user: authResponse.user);
      _loadUserData();
    } on DioException catch (e) {
      final message = e.response?.data?['error'] ?? 'Registration failed';
      state = state.copyWith(status: AuthStatus.unauthenticated, error: message);
    }
  }

  void updateUser(User updatedUser) {
    state = state.copyWith(user: updatedUser);
  }

  Future<void> logout() async {
    final tokenStorage = _ref.read(tokenStorageProvider);
    await tokenStorage.clear();
    _ref.read(cartProvider.notifier).clear();
    _ref.read(wishlistProvider.notifier).clear();
    state = const AuthState(status: AuthStatus.unauthenticated);
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref);
});
