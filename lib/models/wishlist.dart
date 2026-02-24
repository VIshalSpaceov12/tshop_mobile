import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';

part 'wishlist.freezed.dart';
part 'wishlist.g.dart';

@freezed
abstract class WishlistItem with _$WishlistItem {
  const factory WishlistItem({
    required String id,
    required WishlistProduct product,
    DateTime? createdAt,
  }) = _WishlistItem;

  factory WishlistItem.fromJson(Map<String, dynamic> json) => _$WishlistItemFromJson(json);
}

@freezed
abstract class WishlistProduct with _$WishlistProduct {
  const factory WishlistProduct({
    required String id,
    required String name,
    required String slug,
    required String brand,
    required double basePrice,
    required double sellingPrice,
    required double discount,
    List<ProductImage>? images,
  }) = _WishlistProduct;

  factory WishlistProduct.fromJson(Map<String, dynamic> json) => _$WishlistProductFromJson(json);
}

@freezed
abstract class WishlistResponse with _$WishlistResponse {
  const factory WishlistResponse({
    required List<WishlistItem> items,
  }) = _WishlistResponse;

  factory WishlistResponse.fromJson(Map<String, dynamic> json) => _$WishlistResponseFromJson(json);
}

@freezed
abstract class WishlistToggleResponse with _$WishlistToggleResponse {
  const factory WishlistToggleResponse({
    required bool wishlisted,
  }) = _WishlistToggleResponse;

  factory WishlistToggleResponse.fromJson(Map<String, dynamic> json) => _$WishlistToggleResponseFromJson(json);
}
