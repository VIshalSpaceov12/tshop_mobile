// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminCategoryImpl _$$AdminCategoryImplFromJson(Map<String, dynamic> json) =>
    _$AdminCategoryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      image: json['image'] as String?,
      parentId: json['parentId'] as String?,
      parent: json['parent'] == null
          ? null
          : AdminCategoryParent.fromJson(
              json['parent'] as Map<String, dynamic>),
      countData: json['_count'] == null
          ? null
          : AdminCategoryCount.fromJson(json['_count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminCategoryImplToJson(_$AdminCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
      'parentId': instance.parentId,
      'parent': instance.parent,
      '_count': instance.countData,
    };

_$AdminCategoryParentImpl _$$AdminCategoryParentImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminCategoryParentImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AdminCategoryParentImplToJson(
        _$AdminCategoryParentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$AdminCategoryCountImpl _$$AdminCategoryCountImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminCategoryCountImpl(
      products: (json['products'] as num?)?.toInt() ?? 0,
      children: (json['children'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AdminCategoryCountImplToJson(
        _$AdminCategoryCountImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'children': instance.children,
    };
