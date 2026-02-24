// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminDashboardStatsImpl _$$AdminDashboardStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminDashboardStatsImpl(
      totalProducts: (json['totalProducts'] as num?)?.toInt() ?? 0,
      totalCategories: (json['totalCategories'] as num?)?.toInt() ?? 0,
      totalOrders: (json['totalOrders'] as num?)?.toInt() ?? 0,
      totalUsers: (json['totalUsers'] as num?)?.toInt() ?? 0,
      totalRevenue: (json['totalRevenue'] as num?)?.toDouble() ?? 0,
      pendingOrders: (json['pendingOrders'] as num?)?.toInt() ?? 0,
      activeProducts: (json['activeProducts'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AdminDashboardStatsImplToJson(
        _$AdminDashboardStatsImpl instance) =>
    <String, dynamic>{
      'totalProducts': instance.totalProducts,
      'totalCategories': instance.totalCategories,
      'totalOrders': instance.totalOrders,
      'totalUsers': instance.totalUsers,
      'totalRevenue': instance.totalRevenue,
      'pendingOrders': instance.pendingOrders,
      'activeProducts': instance.activeProducts,
    };
