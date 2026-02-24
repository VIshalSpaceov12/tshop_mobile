// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminProductImpl _$$AdminProductImplFromJson(Map<String, dynamic> json) =>
    _$AdminProductImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      brand: json['brand'] as String?,
      basePrice: (json['basePrice'] as num).toDouble(),
      sellingPrice: (json['sellingPrice'] as num).toDouble(),
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      status: json['status'] as String,
      gender: json['gender'] as String,
      categoryId: json['categoryId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      category: json['category'] == null
          ? null
          : AdminProductCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
              ?.map(
                  (e) => AdminProductImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      countData: json['_count'] == null
          ? null
          : AdminProductCount.fromJson(json['_count'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) =>
                  AdminProductVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AdminProductImplToJson(_$AdminProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'brand': instance.brand,
      'basePrice': instance.basePrice,
      'sellingPrice': instance.sellingPrice,
      'discount': instance.discount,
      'status': instance.status,
      'gender': instance.gender,
      'categoryId': instance.categoryId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'category': instance.category,
      'images': instance.images,
      '_count': instance.countData,
      'variants': instance.variants,
    };

_$AdminProductCategoryImpl _$$AdminProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProductCategoryImpl(
      name: json['name'] as String,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$AdminProductCategoryImplToJson(
        _$AdminProductCategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
    };

_$AdminProductImageImpl _$$AdminProductImageImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProductImageImpl(
      id: json['id'] as String?,
      url: json['url'] as String,
      altText: json['altText'] as String?,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
      isPrimary: json['isPrimary'] as bool? ?? false,
    );

Map<String, dynamic> _$$AdminProductImageImplToJson(
        _$AdminProductImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'altText': instance.altText,
      'sortOrder': instance.sortOrder,
      'isPrimary': instance.isPrimary,
    };

_$AdminProductVariantImpl _$$AdminProductVariantImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProductVariantImpl(
      id: json['id'] as String?,
      size: json['size'] as String,
      color: json['color'] as String,
      colorHex: json['colorHex'] as String,
      sku: json['sku'] as String?,
      stock: (json['stock'] as num?)?.toInt() ?? 0,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AdminProductVariantImplToJson(
        _$AdminProductVariantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'color': instance.color,
      'colorHex': instance.colorHex,
      'sku': instance.sku,
      'stock': instance.stock,
      'price': instance.price,
    };

_$AdminProductCountImpl _$$AdminProductCountImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProductCountImpl(
      variants: (json['variants'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AdminProductCountImplToJson(
        _$AdminProductCountImpl instance) =>
    <String, dynamic>{
      'variants': instance.variants,
    };

_$AdminProductListResponseImpl _$$AdminProductListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminProductListResponseImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => AdminProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$AdminProductListResponseImplToJson(
        _$AdminProductListResponseImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'pages': instance.pages,
      'page': instance.page,
    };
