// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      brand: json['brand'] as String,
      basePrice: (json['basePrice'] as num).toDouble(),
      sellingPrice: (json['sellingPrice'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      gender: json['gender'] as String,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      category: json['category'] == null
          ? null
          : ProductCategory.fromJson(json['category'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => ProductVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'brand': instance.brand,
      'basePrice': instance.basePrice,
      'sellingPrice': instance.sellingPrice,
      'discount': instance.discount,
      'gender': instance.gender,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'category': instance.category,
      'variants': instance.variants,
      'images': instance.images,
    };

_$ProductCategoryImpl _$$ProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      slug: json['slug'] as String,
      parent: json['parent'] == null
          ? null
          : ProductCategoryParent.fromJson(
              json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductCategoryImplToJson(
        _$ProductCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent': instance.parent,
    };

_$ProductCategoryParentImpl _$$ProductCategoryParentImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryParentImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$ProductCategoryParentImplToJson(
        _$ProductCategoryParentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };

_$ProductVariantImpl _$$ProductVariantImplFromJson(Map<String, dynamic> json) =>
    _$ProductVariantImpl(
      id: json['id'] as String,
      size: json['size'] as String,
      color: json['color'] as String,
      colorHex: json['colorHex'] as String,
      sku: json['sku'] as String,
      stock: (json['stock'] as num).toInt(),
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ProductVariantImplToJson(
        _$ProductVariantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'color': instance.color,
      'colorHex': instance.colorHex,
      'sku': instance.sku,
      'stock': instance.stock,
      'price': instance.price,
    };

_$ProductImageImpl _$$ProductImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      altText: json['altText'] as String?,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
      isPrimary: json['isPrimary'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProductImageImplToJson(_$ProductImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'altText': instance.altText,
      'sortOrder': instance.sortOrder,
      'isPrimary': instance.isPrimary,
    };

_$ProductListResponseImpl _$$ProductListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListResponseImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductListResponseImplToJson(
        _$ProductListResponseImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'pages': instance.pages,
      'page': instance.page,
    };

_$ProductDetailResponseImpl _$$ProductDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailResponseImpl(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      isWishlisted: json['isWishlisted'] as bool,
      similarProducts: (json['similarProducts'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductDetailResponseImplToJson(
        _$ProductDetailResponseImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'isWishlisted': instance.isWishlisted,
      'similarProducts': instance.similarProducts,
    };
