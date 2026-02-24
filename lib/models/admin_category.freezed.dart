// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminCategory _$AdminCategoryFromJson(Map<String, dynamic> json) {
  return _AdminCategory.fromJson(json);
}

/// @nodoc
mixin _$AdminCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  AdminCategoryParent? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: '_count')
  AdminCategoryCount? get countData => throw _privateConstructorUsedError;

  /// Serializes this AdminCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCategoryCopyWith<AdminCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCategoryCopyWith<$Res> {
  factory $AdminCategoryCopyWith(
          AdminCategory value, $Res Function(AdminCategory) then) =
      _$AdminCategoryCopyWithImpl<$Res, AdminCategory>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? image,
      String? parentId,
      AdminCategoryParent? parent,
      @JsonKey(name: '_count') AdminCategoryCount? countData});

  $AdminCategoryParentCopyWith<$Res>? get parent;
  $AdminCategoryCountCopyWith<$Res>? get countData;
}

/// @nodoc
class _$AdminCategoryCopyWithImpl<$Res, $Val extends AdminCategory>
    implements $AdminCategoryCopyWith<$Res> {
  _$AdminCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? image = freezed,
    Object? parentId = freezed,
    Object? parent = freezed,
    Object? countData = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as AdminCategoryParent?,
      countData: freezed == countData
          ? _value.countData
          : countData // ignore: cast_nullable_to_non_nullable
              as AdminCategoryCount?,
    ) as $Val);
  }

  /// Create a copy of AdminCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminCategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $AdminCategoryParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }

  /// Create a copy of AdminCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminCategoryCountCopyWith<$Res>? get countData {
    if (_value.countData == null) {
      return null;
    }

    return $AdminCategoryCountCopyWith<$Res>(_value.countData!, (value) {
      return _then(_value.copyWith(countData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminCategoryImplCopyWith<$Res>
    implements $AdminCategoryCopyWith<$Res> {
  factory _$$AdminCategoryImplCopyWith(
          _$AdminCategoryImpl value, $Res Function(_$AdminCategoryImpl) then) =
      __$$AdminCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? image,
      String? parentId,
      AdminCategoryParent? parent,
      @JsonKey(name: '_count') AdminCategoryCount? countData});

  @override
  $AdminCategoryParentCopyWith<$Res>? get parent;
  @override
  $AdminCategoryCountCopyWith<$Res>? get countData;
}

/// @nodoc
class __$$AdminCategoryImplCopyWithImpl<$Res>
    extends _$AdminCategoryCopyWithImpl<$Res, _$AdminCategoryImpl>
    implements _$$AdminCategoryImplCopyWith<$Res> {
  __$$AdminCategoryImplCopyWithImpl(
      _$AdminCategoryImpl _value, $Res Function(_$AdminCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? image = freezed,
    Object? parentId = freezed,
    Object? parent = freezed,
    Object? countData = freezed,
  }) {
    return _then(_$AdminCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as AdminCategoryParent?,
      countData: freezed == countData
          ? _value.countData
          : countData // ignore: cast_nullable_to_non_nullable
              as AdminCategoryCount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminCategoryImpl implements _AdminCategory {
  const _$AdminCategoryImpl(
      {required this.id,
      required this.name,
      required this.slug,
      this.image,
      this.parentId,
      this.parent,
      @JsonKey(name: '_count') this.countData});

  factory _$AdminCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminCategoryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? image;
  @override
  final String? parentId;
  @override
  final AdminCategoryParent? parent;
  @override
  @JsonKey(name: '_count')
  final AdminCategoryCount? countData;

  @override
  String toString() {
    return 'AdminCategory(id: $id, name: $name, slug: $slug, image: $image, parentId: $parentId, parent: $parent, countData: $countData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.countData, countData) ||
                other.countData == countData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, slug, image, parentId, parent, countData);

  /// Create a copy of AdminCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCategoryImplCopyWith<_$AdminCategoryImpl> get copyWith =>
      __$$AdminCategoryImplCopyWithImpl<_$AdminCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminCategoryImplToJson(
      this,
    );
  }
}

abstract class _AdminCategory implements AdminCategory {
  const factory _AdminCategory(
          {required final String id,
          required final String name,
          required final String slug,
          final String? image,
          final String? parentId,
          final AdminCategoryParent? parent,
          @JsonKey(name: '_count') final AdminCategoryCount? countData}) =
      _$AdminCategoryImpl;

  factory _AdminCategory.fromJson(Map<String, dynamic> json) =
      _$AdminCategoryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get image;
  @override
  String? get parentId;
  @override
  AdminCategoryParent? get parent;
  @override
  @JsonKey(name: '_count')
  AdminCategoryCount? get countData;

  /// Create a copy of AdminCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCategoryImplCopyWith<_$AdminCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminCategoryParent _$AdminCategoryParentFromJson(Map<String, dynamic> json) {
  return _AdminCategoryParent.fromJson(json);
}

/// @nodoc
mixin _$AdminCategoryParent {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AdminCategoryParent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCategoryParentCopyWith<AdminCategoryParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCategoryParentCopyWith<$Res> {
  factory $AdminCategoryParentCopyWith(
          AdminCategoryParent value, $Res Function(AdminCategoryParent) then) =
      _$AdminCategoryParentCopyWithImpl<$Res, AdminCategoryParent>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AdminCategoryParentCopyWithImpl<$Res, $Val extends AdminCategoryParent>
    implements $AdminCategoryParentCopyWith<$Res> {
  _$AdminCategoryParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminCategoryParentImplCopyWith<$Res>
    implements $AdminCategoryParentCopyWith<$Res> {
  factory _$$AdminCategoryParentImplCopyWith(_$AdminCategoryParentImpl value,
          $Res Function(_$AdminCategoryParentImpl) then) =
      __$$AdminCategoryParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AdminCategoryParentImplCopyWithImpl<$Res>
    extends _$AdminCategoryParentCopyWithImpl<$Res, _$AdminCategoryParentImpl>
    implements _$$AdminCategoryParentImplCopyWith<$Res> {
  __$$AdminCategoryParentImplCopyWithImpl(_$AdminCategoryParentImpl _value,
      $Res Function(_$AdminCategoryParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AdminCategoryParentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminCategoryParentImpl implements _AdminCategoryParent {
  const _$AdminCategoryParentImpl({required this.name});

  factory _$AdminCategoryParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminCategoryParentImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AdminCategoryParent(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCategoryParentImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AdminCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCategoryParentImplCopyWith<_$AdminCategoryParentImpl> get copyWith =>
      __$$AdminCategoryParentImplCopyWithImpl<_$AdminCategoryParentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminCategoryParentImplToJson(
      this,
    );
  }
}

abstract class _AdminCategoryParent implements AdminCategoryParent {
  const factory _AdminCategoryParent({required final String name}) =
      _$AdminCategoryParentImpl;

  factory _AdminCategoryParent.fromJson(Map<String, dynamic> json) =
      _$AdminCategoryParentImpl.fromJson;

  @override
  String get name;

  /// Create a copy of AdminCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCategoryParentImplCopyWith<_$AdminCategoryParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminCategoryCount _$AdminCategoryCountFromJson(Map<String, dynamic> json) {
  return _AdminCategoryCount.fromJson(json);
}

/// @nodoc
mixin _$AdminCategoryCount {
  int get products => throw _privateConstructorUsedError;
  int get children => throw _privateConstructorUsedError;

  /// Serializes this AdminCategoryCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminCategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminCategoryCountCopyWith<AdminCategoryCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCategoryCountCopyWith<$Res> {
  factory $AdminCategoryCountCopyWith(
          AdminCategoryCount value, $Res Function(AdminCategoryCount) then) =
      _$AdminCategoryCountCopyWithImpl<$Res, AdminCategoryCount>;
  @useResult
  $Res call({int products, int children});
}

/// @nodoc
class _$AdminCategoryCountCopyWithImpl<$Res, $Val extends AdminCategoryCount>
    implements $AdminCategoryCountCopyWith<$Res> {
  _$AdminCategoryCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminCategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminCategoryCountImplCopyWith<$Res>
    implements $AdminCategoryCountCopyWith<$Res> {
  factory _$$AdminCategoryCountImplCopyWith(_$AdminCategoryCountImpl value,
          $Res Function(_$AdminCategoryCountImpl) then) =
      __$$AdminCategoryCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int products, int children});
}

/// @nodoc
class __$$AdminCategoryCountImplCopyWithImpl<$Res>
    extends _$AdminCategoryCountCopyWithImpl<$Res, _$AdminCategoryCountImpl>
    implements _$$AdminCategoryCountImplCopyWith<$Res> {
  __$$AdminCategoryCountImplCopyWithImpl(_$AdminCategoryCountImpl _value,
      $Res Function(_$AdminCategoryCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminCategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? children = null,
  }) {
    return _then(_$AdminCategoryCountImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminCategoryCountImpl implements _AdminCategoryCount {
  const _$AdminCategoryCountImpl({this.products = 0, this.children = 0});

  factory _$AdminCategoryCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminCategoryCountImplFromJson(json);

  @override
  @JsonKey()
  final int products;
  @override
  @JsonKey()
  final int children;

  @override
  String toString() {
    return 'AdminCategoryCount(products: $products, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminCategoryCountImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, products, children);

  /// Create a copy of AdminCategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminCategoryCountImplCopyWith<_$AdminCategoryCountImpl> get copyWith =>
      __$$AdminCategoryCountImplCopyWithImpl<_$AdminCategoryCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminCategoryCountImplToJson(
      this,
    );
  }
}

abstract class _AdminCategoryCount implements AdminCategoryCount {
  const factory _AdminCategoryCount({final int products, final int children}) =
      _$AdminCategoryCountImpl;

  factory _AdminCategoryCount.fromJson(Map<String, dynamic> json) =
      _$AdminCategoryCountImpl.fromJson;

  @override
  int get products;
  @override
  int get children;

  /// Create a copy of AdminCategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminCategoryCountImplCopyWith<_$AdminCategoryCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
