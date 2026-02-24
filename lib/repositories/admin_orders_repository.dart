import 'package:dio/dio.dart';
import '../models/admin_order.dart';

class AdminOrdersRepository {
  final Dio _dio;
  AdminOrdersRepository(this._dio);

  Future<AdminOrderListResponse> getOrders({
    int page = 1,
    int limit = 20,
    String? search,
    String? status,
  }) async {
    final response = await _dio.get('/api/admin/orders', queryParameters: {
      'page': page,
      'limit': limit,
      if (search != null && search.isNotEmpty) 'search': search,
      if (status != null && status.isNotEmpty) 'status': status,
    });
    return AdminOrderListResponse.fromJson(response.data);
  }

  Future<AdminOrder> getOrder(String id) async {
    final response = await _dio.get('/api/admin/orders/$id');
    return AdminOrder.fromJson(response.data);
  }

  Future<AdminOrder> updateOrderStatus(String id, {
    required String status,
    String? trackingNumber,
  }) async {
    final response = await _dio.put('/api/admin/orders/$id', data: {
      'status': status,
      if (trackingNumber != null) 'trackingNumber': trackingNumber,
    });
    return AdminOrder.fromJson(response.data);
  }
}
