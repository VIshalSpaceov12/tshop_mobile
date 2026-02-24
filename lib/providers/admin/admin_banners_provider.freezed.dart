// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_banners_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminBannersState {
  List<AdminBanner> get banners => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AdminBannersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminBannersStateCopyWith<AdminBannersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminBannersStateCopyWith<$Res> {
  factory $AdminBannersStateCopyWith(
          AdminBannersState value, $Res Function(AdminBannersState) then) =
      _$AdminBannersStateCopyWithImpl<$Res, AdminBannersState>;
  @useResult
  $Res call({List<AdminBanner> banners, bool isLoading, String? error});
}

/// @nodoc
class _$AdminBannersStateCopyWithImpl<$Res, $Val extends AdminBannersState>
    implements $AdminBannersStateCopyWith<$Res> {
  _$AdminBannersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminBannersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<AdminBanner>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminBannersStateImplCopyWith<$Res>
    implements $AdminBannersStateCopyWith<$Res> {
  factory _$$AdminBannersStateImplCopyWith(_$AdminBannersStateImpl value,
          $Res Function(_$AdminBannersStateImpl) then) =
      __$$AdminBannersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AdminBanner> banners, bool isLoading, String? error});
}

/// @nodoc
class __$$AdminBannersStateImplCopyWithImpl<$Res>
    extends _$AdminBannersStateCopyWithImpl<$Res, _$AdminBannersStateImpl>
    implements _$$AdminBannersStateImplCopyWith<$Res> {
  __$$AdminBannersStateImplCopyWithImpl(_$AdminBannersStateImpl _value,
      $Res Function(_$AdminBannersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminBannersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$AdminBannersStateImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<AdminBanner>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdminBannersStateImpl implements _AdminBannersState {
  const _$AdminBannersStateImpl(
      {final List<AdminBanner> banners = const [],
      this.isLoading = false,
      this.error})
      : _banners = banners;

  final List<AdminBanner> _banners;
  @override
  @JsonKey()
  List<AdminBanner> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'AdminBannersState(banners: $banners, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminBannersStateImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_banners), isLoading, error);

  /// Create a copy of AdminBannersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminBannersStateImplCopyWith<_$AdminBannersStateImpl> get copyWith =>
      __$$AdminBannersStateImplCopyWithImpl<_$AdminBannersStateImpl>(
          this, _$identity);
}

abstract class _AdminBannersState implements AdminBannersState {
  const factory _AdminBannersState(
      {final List<AdminBanner> banners,
      final bool isLoading,
      final String? error}) = _$AdminBannersStateImpl;

  @override
  List<AdminBanner> get banners;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of AdminBannersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminBannersStateImplCopyWith<_$AdminBannersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
