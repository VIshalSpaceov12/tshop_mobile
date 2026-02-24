// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppBanner _$AppBannerFromJson(Map<String, dynamic> json) {
  return _AppBanner.fromJson(json);
}

/// @nodoc
mixin _$AppBanner {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;

  /// Serializes this AppBanner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppBanner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppBannerCopyWith<AppBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBannerCopyWith<$Res> {
  factory $AppBannerCopyWith(AppBanner value, $Res Function(AppBanner) then) =
      _$AppBannerCopyWithImpl<$Res, AppBanner>;
  @useResult
  $Res call(
      {String id, String title, String image, String? link, String? position});
}

/// @nodoc
class _$AppBannerCopyWithImpl<$Res, $Val extends AppBanner>
    implements $AppBannerCopyWith<$Res> {
  _$AppBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppBanner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? link = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppBannerImplCopyWith<$Res>
    implements $AppBannerCopyWith<$Res> {
  factory _$$AppBannerImplCopyWith(
          _$AppBannerImpl value, $Res Function(_$AppBannerImpl) then) =
      __$$AppBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String image, String? link, String? position});
}

/// @nodoc
class __$$AppBannerImplCopyWithImpl<$Res>
    extends _$AppBannerCopyWithImpl<$Res, _$AppBannerImpl>
    implements _$$AppBannerImplCopyWith<$Res> {
  __$$AppBannerImplCopyWithImpl(
      _$AppBannerImpl _value, $Res Function(_$AppBannerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppBanner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? link = freezed,
    Object? position = freezed,
  }) {
    return _then(_$AppBannerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppBannerImpl implements _AppBanner {
  const _$AppBannerImpl(
      {required this.id,
      required this.title,
      required this.image,
      this.link,
      this.position});

  factory _$AppBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppBannerImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String? link;
  @override
  final String? position;

  @override
  String toString() {
    return 'AppBanner(id: $id, title: $title, image: $image, link: $link, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBannerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, link, position);

  /// Create a copy of AppBanner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBannerImplCopyWith<_$AppBannerImpl> get copyWith =>
      __$$AppBannerImplCopyWithImpl<_$AppBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppBannerImplToJson(
      this,
    );
  }
}

abstract class _AppBanner implements AppBanner {
  const factory _AppBanner(
      {required final String id,
      required final String title,
      required final String image,
      final String? link,
      final String? position}) = _$AppBannerImpl;

  factory _AppBanner.fromJson(Map<String, dynamic> json) =
      _$AppBannerImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String? get link;
  @override
  String? get position;

  /// Create a copy of AppBanner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppBannerImplCopyWith<_$AppBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerListResponse _$BannerListResponseFromJson(Map<String, dynamic> json) {
  return _BannerListResponse.fromJson(json);
}

/// @nodoc
mixin _$BannerListResponse {
  List<AppBanner> get banners => throw _privateConstructorUsedError;

  /// Serializes this BannerListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerListResponseCopyWith<BannerListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerListResponseCopyWith<$Res> {
  factory $BannerListResponseCopyWith(
          BannerListResponse value, $Res Function(BannerListResponse) then) =
      _$BannerListResponseCopyWithImpl<$Res, BannerListResponse>;
  @useResult
  $Res call({List<AppBanner> banners});
}

/// @nodoc
class _$BannerListResponseCopyWithImpl<$Res, $Val extends BannerListResponse>
    implements $BannerListResponseCopyWith<$Res> {
  _$BannerListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_value.copyWith(
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<AppBanner>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerListResponseImplCopyWith<$Res>
    implements $BannerListResponseCopyWith<$Res> {
  factory _$$BannerListResponseImplCopyWith(_$BannerListResponseImpl value,
          $Res Function(_$BannerListResponseImpl) then) =
      __$$BannerListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppBanner> banners});
}

/// @nodoc
class __$$BannerListResponseImplCopyWithImpl<$Res>
    extends _$BannerListResponseCopyWithImpl<$Res, _$BannerListResponseImpl>
    implements _$$BannerListResponseImplCopyWith<$Res> {
  __$$BannerListResponseImplCopyWithImpl(_$BannerListResponseImpl _value,
      $Res Function(_$BannerListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_$BannerListResponseImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<AppBanner>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerListResponseImpl implements _BannerListResponse {
  const _$BannerListResponseImpl({required final List<AppBanner> banners})
      : _banners = banners;

  factory _$BannerListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerListResponseImplFromJson(json);

  final List<AppBanner> _banners;
  @override
  List<AppBanner> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  String toString() {
    return 'BannerListResponse(banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerListResponseImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  /// Create a copy of BannerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerListResponseImplCopyWith<_$BannerListResponseImpl> get copyWith =>
      __$$BannerListResponseImplCopyWithImpl<_$BannerListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerListResponseImplToJson(
      this,
    );
  }
}

abstract class _BannerListResponse implements BannerListResponse {
  const factory _BannerListResponse({required final List<AppBanner> banners}) =
      _$BannerListResponseImpl;

  factory _BannerListResponse.fromJson(Map<String, dynamic> json) =
      _$BannerListResponseImpl.fromJson;

  @override
  List<AppBanner> get banners;

  /// Create a copy of BannerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerListResponseImplCopyWith<_$BannerListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
