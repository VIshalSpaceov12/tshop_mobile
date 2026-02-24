import 'package:dio/dio.dart';
import '../models/admin_banner.dart';

class AdminBannersRepository {
  final Dio _dio;
  AdminBannersRepository(this._dio);

  Future<List<AdminBanner>> getBanners() async {
    final response = await _dio.get('/api/admin/banners');
    return (response.data as List).map((e) => AdminBanner.fromJson(e)).toList();
  }

  Future<AdminBanner> createBanner(Map<String, dynamic> data) async {
    final response = await _dio.post('/api/admin/banners', data: data);
    return AdminBanner.fromJson(response.data);
  }

  Future<AdminBanner> updateBanner(String id, Map<String, dynamic> data) async {
    final response = await _dio.put('/api/admin/banners/$id', data: data);
    return AdminBanner.fromJson(response.data);
  }

  Future<void> deleteBanner(String id) async {
    await _dio.delete('/api/admin/banners/$id');
  }
}
