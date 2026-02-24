import 'package:dio/dio.dart';
import '../models/order.dart';

class OrderRepository {
  final Dio _dio;
  OrderRepository(this._dio);

  Future<OrderListResponse> getOrders({int page = 1, int limit = 10}) async {
    final response = await _dio.get('/api/mobile/orders', queryParameters: {
      'page': page,
      'limit': limit,
    });
    return OrderListResponse.fromJson(response.data);
  }

  Future<Order> getOrderDetail(String orderId) async {
    final response = await _dio.get('/api/mobile/orders/$orderId');
    return Order.fromJson(response.data);
  }

  Future<void> cancelOrder(String orderId) async {
    await _dio.post('/api/mobile/orders/$orderId/cancel');
  }
}
