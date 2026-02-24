import 'package:dio/dio.dart';
import '../models/category.dart';

class CategoryRepository {
  final Dio _dio;
  CategoryRepository(this._dio);

  Future<CategoryListResponse> getCategories() async {
    final response = await _dio.get('/api/mobile/categories');
    return CategoryListResponse.fromJson(response.data);
  }
}
