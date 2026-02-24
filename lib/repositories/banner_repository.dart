import 'package:dio/dio.dart';
import '../models/banner.dart';

class BannerRepository {
  final Dio _dio;
  BannerRepository(this._dio);

  Future<BannerListResponse> getBanners() async {
    final response = await _dio.get('/api/mobile/banners');
    return BannerListResponse.fromJson(response.data);
  }
}
