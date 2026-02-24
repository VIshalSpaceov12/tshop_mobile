import 'package:dio/dio.dart';
import '../models/admin_category.dart';

class AdminCategoriesRepository {
  final Dio _dio;
  AdminCategoriesRepository(this._dio);

  Future<List<AdminCategory>> getCategories() async {
    final response = await _dio.get('/api/admin/categories');
    return (response.data as List).map((e) => AdminCategory.fromJson(e)).toList();
  }

  Future<AdminCategory> createCategory(Map<String, dynamic> data) async {
    final response = await _dio.post('/api/admin/categories', data: data);
    return AdminCategory.fromJson(response.data);
  }

  Future<AdminCategory> updateCategory(String id, Map<String, dynamic> data) async {
    final response = await _dio.put('/api/admin/categories/$id', data: data);
    return AdminCategory.fromJson(response.data);
  }

  Future<void> deleteCategory(String id) async {
    await _dio.delete('/api/admin/categories/$id');
  }
}
