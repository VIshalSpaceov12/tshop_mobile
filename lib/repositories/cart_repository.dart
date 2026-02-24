import 'package:dio/dio.dart';
import '../models/cart.dart';

class CartRepository {
  final Dio _dio;
  CartRepository(this._dio);

  Future<CartResponse> getCart() async {
    final response = await _dio.get('/api/cart');
    return CartResponse.fromJson(response.data);
  }

  Future<void> addToCart({required String variantId, int quantity = 1}) async {
    await _dio.post('/api/cart', data: {
      'variantId': variantId,
      'quantity': quantity,
    });
  }

  Future<void> updateQuantity(String itemId, int quantity) async {
    await _dio.put('/api/cart/$itemId', data: {
      'quantity': quantity,
    });
  }

  Future<void> removeItem(String itemId) async {
    await _dio.delete('/api/cart/$itemId');
  }
}
