import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_dashboard.freezed.dart';
part 'admin_dashboard.g.dart';

@freezed
abstract class AdminDashboardStats with _$AdminDashboardStats {
  const factory AdminDashboardStats({
    @Default(0) int totalProducts,
    @Default(0) int totalCategories,
    @Default(0) int totalOrders,
    @Default(0) int totalUsers,
    @Default(0) double totalRevenue,
    @Default(0) int pendingOrders,
    @Default(0) int activeProducts,
  }) = _AdminDashboardStats;

  factory AdminDashboardStats.fromJson(Map<String, dynamic> json) =>
      _$AdminDashboardStatsFromJson(json);
}
