import 'package:dio/dio.dart';
import '../models/wishlist.dart';

class WishlistRepository {
  final Dio _dio;
  WishlistRepository(this._dio);

  Future<WishlistResponse> getWishlist() async {
    final response = await _dio.get('/api/wishlist');
    return WishlistResponse.fromJson(response.data);
  }

  Future<WishlistToggleResponse> toggleWishlist(String productId) async {
    final response = await _dio.post('/api/wishlist', data: {
      'productId': productId,
    });
    return WishlistToggleResponse.fromJson(response.data);
  }

  Future<void> removeFromWishlist(String productId) async {
    await _dio.delete('/api/wishlist', queryParameters: {
      'productId': productId,
    });
  }
}
