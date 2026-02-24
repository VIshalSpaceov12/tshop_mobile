import 'package:dio/dio.dart';
import '../models/address.dart';

class AddressRepository {
  final Dio _dio;
  AddressRepository(this._dio);

  Future<List<Address>> getAddresses() async {
    final response = await _dio.get('/api/addresses');
    return (response.data as List).map((e) => Address.fromJson(e)).toList();
  }

  Future<Address> createAddress(Map<String, dynamic> data) async {
    final response = await _dio.post('/api/addresses', data: data);
    return Address.fromJson(response.data);
  }

  Future<Address> updateAddress(String id, Map<String, dynamic> data) async {
    final response = await _dio.put('/api/addresses/$id', data: data);
    return Address.fromJson(response.data);
  }

  Future<void> deleteAddress(String id) async {
    await _dio.delete('/api/addresses/$id');
  }
}
