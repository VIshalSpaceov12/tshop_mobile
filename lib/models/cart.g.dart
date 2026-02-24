// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: json['id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      variant: CartVariant.fromJson(json['variant'] as Map<String, dynamic>),
      product: CartProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'variant': instance.variant,
      'product': instance.product,
    };

_$CartVariantImpl _$$CartVariantImplFromJson(Map<String, dynamic> json) =>
    _$CartVariantImpl(
      id: json['id'] as String,
      size: json['size'] as String,
      color: json['color'] as String,
      colorHex: json['colorHex'] as String,
      stock: (json['stock'] as num).toInt(),
    );

Map<String, dynamic> _$$CartVariantImplToJson(_$CartVariantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'color': instance.color,
      'colorHex': instance.colorHex,
      'stock': instance.stock,
    };

_$CartProductImpl _$$CartProductImplFromJson(Map<String, dynamic> json) =>
    _$CartProductImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      brand: json['brand'] as String,
      sellingPrice: (json['sellingPrice'] as num).toDouble(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => CartProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartProductImplToJson(_$CartProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'brand': instance.brand,
      'sellingPrice': instance.sellingPrice,
      'images': instance.images,
    };

_$CartProductImageImpl _$$CartProductImageImplFromJson(
        Map<String, dynamic> json) =>
    _$CartProductImageImpl(
      url: json['url'] as String,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CartProductImageImplToJson(
        _$CartProductImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'sortOrder': instance.sortOrder,
    };

_$CartResponseImpl _$$CartResponseImplFromJson(Map<String, dynamic> json) =>
    _$CartResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemCount: (json['itemCount'] as num).toInt(),
    );

Map<String, dynamic> _$$CartResponseImplToJson(_$CartResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'itemCount': instance.itemCount,
    };
