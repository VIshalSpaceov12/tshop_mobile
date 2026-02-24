// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminBanner _$AdminBannerFromJson(Map<String, dynamic> json) {
  return _AdminBanner.fromJson(json);
}

/// @nodoc
mixin _$AdminBanner {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;

  /// Serializes this AdminBanner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminBanner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminBannerCopyWith<AdminBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminBannerCopyWith<$Res> {
  factory $AdminBannerCopyWith(
          AdminBanner value, $Res Function(AdminBanner) then) =
      _$AdminBannerCopyWithImpl<$Res, AdminBanner>;
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      String? link,
      String position,
      bool isActive,
      int sortOrder});
}

/// @nodoc
class _$AdminBannerCopyWithImpl<$Res, $Val extends AdminBanner>
    implements $AdminBannerCopyWith<$Res> {
  _$AdminBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminBanner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? link = freezed,
    Object? position = null,
    Object? isActive = null,
    Object? sortOrder = null,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminBannerImplCopyWith<$Res>
    implements $AdminBannerCopyWith<$Res> {
  factory _$$AdminBannerImplCopyWith(
          _$AdminBannerImpl value, $Res Function(_$AdminBannerImpl) then) =
      __$$AdminBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      String? link,
      String position,
      bool isActive,
      int sortOrder});
}

/// @nodoc
class __$$AdminBannerImplCopyWithImpl<$Res>
    extends _$AdminBannerCopyWithImpl<$Res, _$AdminBannerImpl>
    implements _$$AdminBannerImplCopyWith<$Res> {
  __$$AdminBannerImplCopyWithImpl(
      _$AdminBannerImpl _value, $Res Function(_$AdminBannerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminBanner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? link = freezed,
    Object? position = null,
    Object? isActive = null,
    Object? sortOrder = null,
  }) {
    return _then(_$AdminBannerImpl(
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminBannerImpl implements _AdminBanner {
  const _$AdminBannerImpl(
      {required this.id,
      required this.title,
      required this.image,
      this.link,
      this.position = 'home_top',
      this.isActive = true,
      this.sortOrder = 0});

  factory _$AdminBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminBannerImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String? link;
  @override
  @JsonKey()
  final String position;
  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final int sortOrder;

  @override
  String toString() {
    return 'AdminBanner(id: $id, title: $title, image: $image, link: $link, position: $position, isActive: $isActive, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminBannerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, image, link, position, isActive, sortOrder);

  /// Create a copy of AdminBanner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminBannerImplCopyWith<_$AdminBannerImpl> get copyWith =>
      __$$AdminBannerImplCopyWithImpl<_$AdminBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminBannerImplToJson(
      this,
    );
  }
}

abstract class _AdminBanner implements AdminBanner {
  const factory _AdminBanner(
      {required final String id,
      required final String title,
      required final String image,
      final String? link,
      final String position,
      final bool isActive,
      final int sortOrder}) = _$AdminBannerImpl;

  factory _AdminBanner.fromJson(Map<String, dynamic> json) =
      _$AdminBannerImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String? get link;
  @override
  String get position;
  @override
  bool get isActive;
  @override
  int get sortOrder;

  /// Create a copy of AdminBanner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminBannerImplCopyWith<_$AdminBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
