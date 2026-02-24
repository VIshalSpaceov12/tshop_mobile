import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';
part 'banner.g.dart';

@freezed
abstract class AppBanner with _$AppBanner {
  const factory AppBanner({
    required String id,
    required String title,
    required String image,
    String? link,
    String? position,
  }) = _AppBanner;

  factory AppBanner.fromJson(Map<String, dynamic> json) => _$AppBannerFromJson(json);
}

@freezed
abstract class BannerListResponse with _$BannerListResponse {
  const factory BannerListResponse({
    required List<AppBanner> banners,
  }) = _BannerListResponse;

  factory BannerListResponse.fromJson(Map<String, dynamic> json) => _$BannerListResponseFromJson(json);
}
