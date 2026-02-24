import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/address.dart';
import 'core_providers.dart';

class AddressState {
  final List<Address> addresses;
  final bool isLoading;
  final String? error;

  const AddressState({
    this.addresses = const [],
    this.isLoading = false,
    this.error,
  });

  Address? get defaultAddress {
    try {
      return addresses.firstWhere((a) => a.isDefault);
    } catch (_) {
      return addresses.isNotEmpty ? addresses.first : null;
    }
  }

  AddressState copyWith({
    List<Address>? addresses,
    bool? isLoading,
    String? error,
    bool clearError = false,
  }) {
    return AddressState(
      addresses: addresses ?? this.addresses,
      isLoading: isLoading ?? this.isLoading,
      error: clearError ? null : (error ?? this.error),
    );
  }
}

class AddressNotifier extends StateNotifier<AddressState> {
  final Ref _ref;

  AddressNotifier(this._ref) : super(const AddressState());

  Future<void> loadAddresses() async {
    state = state.copyWith(isLoading: true, clearError: true);
    try {
      final repo = _ref.read(addressRepositoryProvider);
      final addresses = await repo.getAddresses();
      state = state.copyWith(addresses: addresses, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> createAddress(Map<String, dynamic> data) async {
    try {
      final repo = _ref.read(addressRepositoryProvider);
      await repo.createAddress(data);
      await loadAddresses();
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }

  Future<bool> deleteAddress(String id) async {
    try {
      final repo = _ref.read(addressRepositoryProvider);
      await repo.deleteAddress(id);
      await loadAddresses();
      return true;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return false;
    }
  }
}

final addressProvider = StateNotifierProvider<AddressNotifier, AddressState>((ref) {
  return AddressNotifier(ref);
});
