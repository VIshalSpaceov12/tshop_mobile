// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      image: json['image'] as String?,
      parentId: json['parentId'] as String?,
      parent: json['parent'] == null
          ? null
          : CategoryParent.fromJson(json['parent'] as Map<String, dynamic>),
      count: json['_count'] == null
          ? null
          : CategoryCount.fromJson(json['_count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'parentId': instance.parentId,
      'parent': instance.parent,
      '_count': instance.count,
    };

_$CategoryParentImpl _$$CategoryParentImplFromJson(Map<String, dynamic> json) =>
    _$CategoryParentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$CategoryParentImplToJson(
        _$CategoryParentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$CategoryCountImpl _$$CategoryCountImplFromJson(Map<String, dynamic> json) =>
    _$CategoryCountImpl(
      products: (json['products'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CategoryCountImplToJson(_$CategoryCountImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$CategoryListResponseImpl _$$CategoryListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListResponseImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryListResponseImplToJson(
        _$CategoryListResponseImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
