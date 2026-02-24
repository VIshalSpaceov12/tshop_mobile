// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppBannerImpl _$$AppBannerImplFromJson(Map<String, dynamic> json) =>
    _$AppBannerImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      link: json['link'] as String?,
      position: json['position'] as String?,
    );

Map<String, dynamic> _$$AppBannerImplToJson(_$AppBannerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'link': instance.link,
      'position': instance.position,
    };

_$BannerListResponseImpl _$$BannerListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BannerListResponseImpl(
      banners: (json['banners'] as List<dynamic>)
          .map((e) => AppBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BannerListResponseImplToJson(
        _$BannerListResponseImpl instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };
