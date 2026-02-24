import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required String id,
    required int quantity,
    required CartVariant variant,
    required CartProduct product,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}

@freezed
abstract class CartVariant with _$CartVariant {
  const factory CartVariant({
    required String id,
    required String size,
    required String color,
    required String colorHex,
    required int stock,
  }) = _CartVariant;

  factory CartVariant.fromJson(Map<String, dynamic> json) => _$CartVariantFromJson(json);
}

@freezed
abstract class CartProduct with _$CartProduct {
  const factory CartProduct({
    required String id,
    required String name,
    required String slug,
    required String brand,
    required double sellingPrice,
    List<CartProductImage>? images,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) => _$CartProductFromJson(json);
}

@freezed
abstract class CartProductImage with _$CartProductImage {
  const factory CartProductImage({
    required String url,
    @Default(0) int sortOrder,
  }) = _CartProductImage;

  factory CartProductImage.fromJson(Map<String, dynamic> json) => _$CartProductImageFromJson(json);
}

@freezed
abstract class CartResponse with _$CartResponse {
  const factory CartResponse({
    required List<CartItem> items,
    required int itemCount,
  }) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) => _$CartResponseFromJson(json);
}
