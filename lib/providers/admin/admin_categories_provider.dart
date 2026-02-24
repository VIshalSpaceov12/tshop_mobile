import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/admin_category.dart';
import '../core_providers.dart';

part 'admin_categories_provider.freezed.dart';

@freezed
abstract class AdminCategoriesState with _$AdminCategoriesState {
  const factory AdminCategoriesState({
    @Default([]) List<AdminCategory> categories,
    @Default(false) bool isLoading,
    String? error,
  }) = _AdminCategoriesState;
}

class AdminCategoriesNotifier extends StateNotifier<AdminCategoriesState> {
  final Ref _ref;
  AdminCategoriesNotifier(this._ref) : super(const AdminCategoriesState());

  Future<void> loadCategories() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final repo = _ref.read(adminCategoriesRepositoryProvider);
      final categories = await repo.getCategories();
      state = state.copyWith(categories: categories, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<bool> createCategory(Map<String, dynamic> data) async {
    try {
      final repo = _ref.read(adminCategoriesRepositoryProvider);
      await repo.createCategory(data);
      await loadCategories();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateCategory(String id, Map<String, dynamic> data) async {
    try {
      final repo = _ref.read(adminCategoriesRepositoryProvider);
      await repo.updateCategory(id, data);
      await loadCategories();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteCategory(String id) async {
    try {
      final repo = _ref.read(adminCategoriesRepositoryProvider);
      await repo.deleteCategory(id);
      state = state.copyWith(
        categories: state.categories.where((c) => c.id != id).toList(),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}

final adminCategoriesProvider =
    StateNotifierProvider.autoDispose<AdminCategoriesNotifier, AdminCategoriesState>((ref) {
  return AdminCategoriesNotifier(ref);
});
