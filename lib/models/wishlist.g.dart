// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistItemImpl _$$WishlistItemImplFromJson(Map<String, dynamic> json) =>
    _$WishlistItemImpl(
      id: json['id'] as String,
      product:
          WishlistProduct.fromJson(json['product'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$WishlistItemImplToJson(_$WishlistItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$WishlistProductImpl _$$WishlistProductImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistProductImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      brand: json['brand'] as String,
      basePrice: (json['basePrice'] as num).toDouble(),
      sellingPrice: (json['sellingPrice'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WishlistProductImplToJson(
        _$WishlistProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'brand': instance.brand,
      'basePrice': instance.basePrice,
      'sellingPrice': instance.sellingPrice,
      'discount': instance.discount,
      'images': instance.images,
    };

_$WishlistResponseImpl _$$WishlistResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => WishlistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WishlistResponseImplToJson(
        _$WishlistResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$WishlistToggleResponseImpl _$$WishlistToggleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistToggleResponseImpl(
      wishlisted: json['wishlisted'] as bool,
    );

Map<String, dynamic> _$$WishlistToggleResponseImplToJson(
        _$WishlistToggleResponseImpl instance) =>
    <String, dynamic>{
      'wishlisted': instance.wishlisted,
    };
