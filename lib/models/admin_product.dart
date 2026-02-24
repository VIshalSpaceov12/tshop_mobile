import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_product.freezed.dart';
part 'admin_product.g.dart';

@freezed
abstract class AdminProduct with _$AdminProduct {
  const factory AdminProduct({
    required String id,
    required String name,
    required String slug,
    String? description,
    String? brand,
    required double basePrice,
    required double sellingPrice,
    @Default(0) double discount,
    required String status,
    required String gender,
    String? categoryId,
    required DateTime createdAt,
    required DateTime updatedAt,
    AdminProductCategory? category,
    @Default([]) List<AdminProductImage> images,
    @JsonKey(name: '_count') AdminProductCount? countData,
    @Default([]) List<AdminProductVariant> variants,
  }) = _AdminProduct;

  factory AdminProduct.fromJson(Map<String, dynamic> json) =>
      _$AdminProductFromJson(json);
}

@freezed
abstract class AdminProductCategory with _$AdminProductCategory {
  const factory AdminProductCategory({
    required String name,
    String? slug,
  }) = _AdminProductCategory;

  factory AdminProductCategory.fromJson(Map<String, dynamic> json) =>
      _$AdminProductCategoryFromJson(json);
}

@freezed
abstract class AdminProductImage with _$AdminProductImage {
  const factory AdminProductImage({
    String? id,
    required String url,
    String? altText,
    @Default(0) int sortOrder,
    @Default(false) bool isPrimary,
  }) = _AdminProductImage;

  factory AdminProductImage.fromJson(Map<String, dynamic> json) =>
      _$AdminProductImageFromJson(json);
}

@freezed
abstract class AdminProductVariant with _$AdminProductVariant {
  const factory AdminProductVariant({
    String? id,
    required String size,
    required String color,
    required String colorHex,
    String? sku,
    @Default(0) int stock,
    double? price,
  }) = _AdminProductVariant;

  factory AdminProductVariant.fromJson(Map<String, dynamic> json) =>
      _$AdminProductVariantFromJson(json);
}

@freezed
abstract class AdminProductCount with _$AdminProductCount {
  const factory AdminProductCount({
    @Default(0) int variants,
  }) = _AdminProductCount;

  factory AdminProductCount.fromJson(Map<String, dynamic> json) =>
      _$AdminProductCountFromJson(json);
}

@freezed
abstract class AdminProductListResponse with _$AdminProductListResponse {
  const factory AdminProductListResponse({
    required List<AdminProduct> products,
    required int total,
    required int pages,
    required int page,
  }) = _AdminProductListResponse;

  factory AdminProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminProductListResponseFromJson(json);
}
