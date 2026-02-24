import 'package:dio/dio.dart';
import '../models/order.dart';

class CheckoutRepository {
  final Dio _dio;
  CheckoutRepository(this._dio);

  Future<CheckoutResponse> checkout(String addressId) async {
    final response = await _dio.post('/api/checkout', data: {
      'addressId': addressId,
    });
    return CheckoutResponse.fromJson(response.data);
  }
}
