// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_categories_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminCategoriesState {
  List<AdminCategory> get categories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCategoriesStateCopyWith<AdminCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCategoriesStateCopyWith<$Res> {
  factory $AdminCategoriesStateCopyWith(AdminCategoriesState value,
          $Res Function(AdminCategoriesState) then) =
      _$AdminCategoriesStateCopyWithImpl<$Res, AdminCategoriesState>;
  @useResult
  $Res call({List<AdminCategory> categories, bool isLoading, String? error});
}

/// @nodoc
class _$AdminCategoriesStateCopyWithImpl<$Res,
        $Val extends AdminCategoriesState>
    implements $AdminCategoriesStateCopyWith<$Res> {
  _$AdminCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AdminCategory>,
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
abstract class _$$AdminCategoriesStateImplCopyWith<$Res>
    implements $AdminCategoriesStateCopyWith<$Res> {
  factory _$$AdminCategoriesStateImplCopyWith(_$AdminCategoriesStateImpl value,
          $Res Function(_$AdminCategoriesStateImpl) then) =
      __$$AdminCategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AdminCategory> categories, bool isLoading, String? error});
}

/// @nodoc
class __$$AdminCategoriesStateImplCopyWithImpl<$Res>
    extends _$AdminCategoriesStateCopyWithImpl<$Res, _$AdminCategoriesStateImpl>
    implements _$$AdminCategoriesStateImplCopyWith<$Res> {
  __$$AdminCategoriesStateImplCopyWithImpl(_$AdminCategoriesStateImpl _value,
      $Res Function(_$AdminCategoriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$AdminCategoriesStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AdminCategory>,
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

class _$AdminCategoriesStateImpl implements _AdminCategoriesState {
  const _$AdminCategoriesStateImpl(
      {final List<AdminCategory> categories = const [],
      this.isLoading = false,
      this.error})
      : _categories = categories;

  final List<AdminCategory> _categories;
  @override
  @JsonKey()
  List<AdminCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'AdminCategoriesState(categories: $categories, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCategoriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), isLoading, error);

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCategoriesStateImplCopyWith<_$AdminCategoriesStateImpl>
      get copyWith =>
          __$$AdminCategoriesStateImplCopyWithImpl<_$AdminCategoriesStateImpl>(
              this, _$identity);
}

abstract class _AdminCategoriesState implements AdminCategoriesState {
  const factory _AdminCategoriesState(
      {final List<AdminCategory> categories,
      final bool isLoading,
      final String? error}) = _$AdminCategoriesStateImpl;

  @override
  List<AdminCategory> get categories;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of AdminCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCategoriesStateImplCopyWith<_$AdminCategoriesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
