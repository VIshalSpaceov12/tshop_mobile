import 'package:dio/dio.dart';
import '../models/admin_product.dart';

class AdminProductsRepository {
  final Dio _dio;
  AdminProductsRepository(this._dio);

  Future<AdminProductListResponse> getProducts({
    int page = 1,
    int limit = 20,
    String? search,
    String? status,
  }) async {
    final response = await _dio.get('/api/admin/products', queryParameters: {
      'page': page,
      'limit': limit,
      if (search != null && search.isNotEmpty) 'search': search,
      if (status != null && status.isNotEmpty) 'status': status,
    });
    return AdminProductListResponse.fromJson(response.data);
  }

  Future<AdminProduct> getProduct(String id) async {
    final response = await _dio.get('/api/admin/products/$id');
    return AdminProduct.fromJson(response.data);
  }

  Future<AdminProduct> createProduct(Map<String, dynamic> data) async {
    final response = await _dio.post('/api/admin/products', data: data);
    return AdminProduct.fromJson(response.data);
  }

  Future<AdminProduct> updateProduct(String id, Map<String, dynamic> data) async {
    final response = await _dio.put('/api/admin/products/$id', data: data);
    return AdminProduct.fromJson(response.data);
  }

  Future<void> deleteProduct(String id) async {
    await _dio.delete('/api/admin/products/$id');
  }
}
