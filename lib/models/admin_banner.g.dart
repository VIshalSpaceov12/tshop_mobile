// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminBannerImpl _$$AdminBannerImplFromJson(Map<String, dynamic> json) =>
    _$AdminBannerImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      link: json['link'] as String?,
      position: json['position'] as String? ?? 'home_top',
      isActive: json['isActive'] as bool? ?? true,
      sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AdminBannerImplToJson(_$AdminBannerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'link': instance.link,
      'position': instance.position,
      'isActive': instance.isActive,
      'sortOrder': instance.sortOrder,
    };
