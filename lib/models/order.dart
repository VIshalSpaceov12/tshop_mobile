import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    required String id,
    required String status,
    required double totalAmount,
    required String paymentMethod,
    required String paymentStatus,
    String? trackingNumber,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<OrderItem> items,
    OrderAddress? address,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String id,
    required int quantity,
    required double price,
    required OrderVariant variant,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}

@freezed
abstract class OrderVariant with _$OrderVariant {
  const factory OrderVariant({
    required String id,
    required String size,
    required String color,
    required String colorHex,
    required OrderProduct product,
  }) = _OrderVariant;

  factory OrderVariant.fromJson(Map<String, dynamic> json) => _$OrderVariantFromJson(json);
}

@freezed
abstract class OrderProduct with _$OrderProduct {
  const factory OrderProduct({
    required String name,
    required String slug,
    List<OrderProductImage>? images,
  }) = _OrderProduct;

  factory OrderProduct.fromJson(Map<String, dynamic> json) => _$OrderProductFromJson(json);
}

@freezed
abstract class OrderProductImage with _$OrderProductImage {
  const factory OrderProductImage({
    required String url,
  }) = _OrderProductImage;

  factory OrderProductImage.fromJson(Map<String, dynamic> json) => _$OrderProductImageFromJson(json);
}

@freezed
abstract class OrderAddress with _$OrderAddress {
  const factory OrderAddress({
    required String id,
    required String fullName,
    required String phone,
    required String addressLine1,
    String? addressLine2,
    required String city,
    required String state,
    required String pincode,
    @Default(false) bool isDefault,
  }) = _OrderAddress;

  factory OrderAddress.fromJson(Map<String, dynamic> json) => _$OrderAddressFromJson(json);
}

@freezed
abstract class OrderListResponse with _$OrderListResponse {
  const factory OrderListResponse({
    required List<Order> orders,
    required int total,
    required int page,
    required int pages,
  }) = _OrderListResponse;

  factory OrderListResponse.fromJson(Map<String, dynamic> json) => _$OrderListResponseFromJson(json);
}

@freezed
abstract class CheckoutResponse with _$CheckoutResponse {
  const factory CheckoutResponse({
    required String orderId,
  }) = _CheckoutResponse;

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) => _$CheckoutResponseFromJson(json);
}
