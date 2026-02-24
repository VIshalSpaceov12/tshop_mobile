import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_banner.freezed.dart';
part 'admin_banner.g.dart';

@freezed
abstract class AdminBanner with _$AdminBanner {
  const factory AdminBanner({
    required String id,
    required String title,
    required String image,
    String? link,
    @Default('home_top') String position,
    @Default(true) bool isActive,
    @Default(0) int sortOrder,
  }) = _AdminBanner;

  factory AdminBanner.fromJson(Map<String, dynamic> json) =>
      _$AdminBannerFromJson(json);
}
