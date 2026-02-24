import 'package:dio/dio.dart';
import '../models/product.dart';

class ProductRepository {
  final Dio _dio;
  ProductRepository(this._dio);

  Future<ProductListResponse> getProducts({
    int page = 1,
    String? search,
    String? gender,
    String? category,
    String? sort,
    int limit = 12,
  }) async {
    final queryParams = <String, dynamic>{
      'page': page,
      'limit': limit,
    };
    if (search != null && search.isNotEmpty) queryParams['search'] = search;
    if (gender != null && gender.isNotEmpty) queryParams['gender'] = gender;
    if (category != null && category.isNotEmpty) queryParams['category'] = category;
    if (sort != null && sort.isNotEmpty) queryParams['sort'] = sort;

    final response = await _dio.get('/api/mobile/products', queryParameters: queryParams);
    return ProductListResponse.fromJson(response.data);
  }

  Future<ProductDetailResponse> getProductBySlug(String slug) async {
    final response = await _dio.get('/api/mobile/products/$slug');
    return ProductDetailResponse.fromJson(response.data);
  }
}
