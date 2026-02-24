import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/admin_dashboard.dart';
import '../core_providers.dart';

final adminDashboardProvider = FutureProvider.autoDispose<AdminDashboardStats>((ref) async {
  final repo = ref.watch(adminDashboardRepositoryProvider);
  return repo.getStats();
});
