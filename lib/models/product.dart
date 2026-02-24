import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String slug,
    String? description,
    required String brand,
    required double basePrice,
    required double sellingPrice,
    required double discount,
    required String gender,
    String? status,
    DateTime? createdAt,
    ProductCategory? category,
    List<ProductVariant>? variants,
    List<ProductImage>? images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
abstract class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    String? id,
    required String name,
    required String slug,
    ProductCategoryParent? parent,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) => _$ProductCategoryFromJson(json);
}

@freezed
abstract class ProductCategoryParent with _$ProductCategoryParent {
  const factory ProductCategoryParent({
    required String name,
    required String slug,
  }) = _ProductCategoryParent;

  factory ProductCategoryParent.fromJson(Map<String, dynamic> json) => _$ProductCategoryParentFromJson(json);
}

@freezed
abstract class ProductVariant with _$ProductVariant {
  const factory ProductVariant({
    required String id,
    required String size,
    required String color,
    required String colorHex,
    required String sku,
    required int stock,
    double? price,
  }) = _ProductVariant;

  factory ProductVariant.fromJson(Map<String, dynamic> json) => _$ProductVariantFromJson(json);
}

@freezed
abstract class ProductImage with _$ProductImage {
  const factory ProductImage({
    required String id,
    required String url,
    String? altText,
    @Default(0) int sortOrder,
    @Default(false) bool isPrimary,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) => _$ProductImageFromJson(json);
}

@freezed
abstract class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    required List<Product> products,
    required int total,
    required int pages,
    required int page,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) => _$ProductListResponseFromJson(json);
}

@freezed
abstract class ProductDetailResponse with _$ProductDetailResponse {
  const factory ProductDetailResponse({
    required Product product,
    required bool isWishlisted,
    required List<Product> similarProducts,
  }) = _ProductDetailResponse;

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) => _$ProductDetailResponseFromJson(json);
}
