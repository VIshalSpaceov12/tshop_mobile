import 'package:dio/dio.dart';
import '../models/admin_dashboard.dart';

class AdminDashboardRepository {
  final Dio _dio;
  AdminDashboardRepository(this._dio);

  Future<AdminDashboardStats> getStats() async {
    final response = await _dio.get('/api/admin/dashboard');
    return AdminDashboardStats.fromJson(response.data);
  }
}
