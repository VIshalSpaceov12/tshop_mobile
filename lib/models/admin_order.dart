import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_order.freezed.dart';
part 'admin_order.g.dart';

@freezed
abstract class AdminOrder with _$AdminOrder {
  const factory AdminOrder({
    required String id,
    required String status,
    required double totalAmount,
    required String paymentMethod,
    required String paymentStatus,
    String? trackingNumber,
    required DateTime createdAt,
    required DateTime updatedAt,
    AdminOrderUser? user,
    AdminOrderAddress? address,
    @Default([]) List<AdminOrderItem> items,
    @JsonKey(name: '_count') AdminOrderCount? countData,
  }) = _AdminOrder;

  factory AdminOrder.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderFromJson(json);
}

@freezed
abstract class AdminOrderUser with _$AdminOrderUser {
  const factory AdminOrderUser({
    String? name,
    String? email,
  }) = _AdminOrderUser;

  factory AdminOrderUser.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderUserFromJson(json);
}

@freezed
abstract class AdminOrderAddress with _$AdminOrderAddress {
  const factory AdminOrderAddress({
    String? fullName,
    String? phone,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? state,
    String? pincode,
  }) = _AdminOrderAddress;

  factory AdminOrderAddress.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderAddressFromJson(json);
}

@freezed
abstract class AdminOrderItem with _$AdminOrderItem {
  const factory AdminOrderItem({
    required String id,
    required int quantity,
    required double price,
    required AdminOrderVariant variant,
  }) = _AdminOrderItem;

  factory AdminOrderItem.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderItemFromJson(json);
}

@freezed
abstract class AdminOrderVariant with _$AdminOrderVariant {
  const factory AdminOrderVariant({
    required String size,
    required String color,
    required AdminOrderProduct product,
  }) = _AdminOrderVariant;

  factory AdminOrderVariant.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderVariantFromJson(json);
}

@freezed
abstract class AdminOrderProduct with _$AdminOrderProduct {
  const factory AdminOrderProduct({
    required String name,
    required String slug,
    @Default([]) List<AdminOrderProductImage> images,
  }) = _AdminOrderProduct;

  factory AdminOrderProduct.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderProductFromJson(json);
}

@freezed
abstract class AdminOrderProductImage with _$AdminOrderProductImage {
  const factory AdminOrderProductImage({
    required String url,
  }) = _AdminOrderProductImage;

  factory AdminOrderProductImage.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderProductImageFromJson(json);
}

@freezed
abstract class AdminOrderCount with _$AdminOrderCount {
  const factory AdminOrderCount({
    @Default(0) int items,
  }) = _AdminOrderCount;

  factory AdminOrderCount.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderCountFromJson(json);
}

@freezed
abstract class AdminOrderListResponse with _$AdminOrderListResponse {
  const factory AdminOrderListResponse({
    required List<AdminOrder> orders,
    required int total,
    required int pages,
    required int page,
  }) = _AdminOrderListResponse;

  factory AdminOrderListResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminOrderListResponseFromJson(json);
}
