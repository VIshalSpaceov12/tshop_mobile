import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'core_providers.dart';
import 'auth_provider.dart';

part 'account_provider.freezed.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState({
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
    String? error,
    String? successMessage,
  }) = _AccountState;
}

class AccountNotifier extends StateNotifier<AccountState> {
  final Ref _ref;
  AccountNotifier(this._ref) : super(const AccountState());

  Future<bool> updateProfile({
    required String name,
    String? phone,
  }) async {
    state = state.copyWith(isSaving: true, error: null, successMessage: null);
    try {
      final repo = _ref.read(accountRepositoryProvider);
      final data = await repo.updateProfile(name: name, phone: phone);

      // Update auth state with new user info
      final authNotifier = _ref.read(authProvider.notifier);
      final currentUser = _ref.read(authProvider).user;
      if (currentUser != null) {
        authNotifier.updateUser(currentUser.copyWith(
          name: data['name'] as String?,
          phone: data['phone'] as String?,
        ));
      }

      state = state.copyWith(
        isSaving: false,
        successMessage: 'Profile updated successfully',
      );
      return true;
    } catch (e) {
      state = state.copyWith(isSaving: false, error: e.toString());
      return false;
    }
  }

  void clearMessages() {
    state = state.copyWith(error: null, successMessage: null);
  }
}

final accountProvider =
    StateNotifierProvider<AccountNotifier, AccountState>((ref) {
  return AccountNotifier(ref);
});
