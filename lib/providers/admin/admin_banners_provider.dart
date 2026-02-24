import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/admin_banner.dart';
import '../core_providers.dart';

part 'admin_banners_provider.freezed.dart';

@freezed
abstract class AdminBannersState with _$AdminBannersState {
  const factory AdminBannersState({
    @Default([]) List<AdminBanner> banners,
    @Default(false) bool isLoading,
    String? error,
  }) = _AdminBannersState;
}

class AdminBannersNotifier extends StateNotifier<AdminBannersState> {
  final Ref _ref;
  AdminBannersNotifier(this._ref) : super(const AdminBannersState());

  Future<void> loadBanners() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final repo = _ref.read(adminBannersRepositoryProvider);
      final banners = await repo.getBanners();
      state = state.copyWith(banners: banners, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> createBanner(Map<String, dynamic> data) async {
    try {
      final repo = _ref.read(adminBannersRepositoryProvider);
      await repo.createBanner(data);
      await loadBanners();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateBanner(String id, Map<String, dynamic> data) async {
    try {
      final repo = _ref.read(adminBannersRepositoryProvider);
      await repo.updateBanner(id, data);
      await loadBanners();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteBanner(String id) async {
    try {
      final repo = _ref.read(adminBannersRepositoryProvider);
      await repo.deleteBanner(id);
      state = state.copyWith(
        banners: state.banners.where((b) => b.id != id).toList(),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}

final adminBannersProvider =
    StateNotifierProvider.autoDispose<AdminBannersNotifier, AdminBannersState>((ref) {
  return AdminBannersNotifier(ref);
});
