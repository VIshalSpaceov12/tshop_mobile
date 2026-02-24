// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  CategoryParent? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: '_count')
  CategoryCount? get count => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? image,
      String? parentId,
      CategoryParent? parent,
      @JsonKey(name: '_count') CategoryCount? count});

  $CategoryParentCopyWith<$Res>? get parent;
  $CategoryCountCopyWith<$Res>? get count;
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
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
    Object? count = freezed,
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
              as CategoryParent?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as CategoryCount?,
    ) as $Val);
  }

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $CategoryParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCountCopyWith<$Res>? get count {
    if (_value.count == null) {
      return null;
    }

    return $CategoryCountCopyWith<$Res>(_value.count!, (value) {
      return _then(_value.copyWith(count: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? image,
      String? parentId,
      CategoryParent? parent,
      @JsonKey(name: '_count') CategoryCount? count});

  @override
  $CategoryParentCopyWith<$Res>? get parent;
  @override
  $CategoryCountCopyWith<$Res>? get count;
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
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
    Object? count = freezed,
  }) {
    return _then(_$CategoryImpl(
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
              as CategoryParent?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as CategoryCount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.id,
      required this.name,
      required this.slug,
      this.image,
      this.parentId,
      this.parent,
      @JsonKey(name: '_count') this.count});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

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
  final CategoryParent? parent;
  @override
  @JsonKey(name: '_count')
  final CategoryCount? count;

  @override
  String toString() {
    return 'Category(id: $id, name: $name, slug: $slug, image: $image, parentId: $parentId, parent: $parent, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, image, parentId, parent, count);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String id,
      required final String name,
      required final String slug,
      final String? image,
      final String? parentId,
      final CategoryParent? parent,
      @JsonKey(name: '_count') final CategoryCount? count}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

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
  CategoryParent? get parent;
  @override
  @JsonKey(name: '_count')
  CategoryCount? get count;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryParent _$CategoryParentFromJson(Map<String, dynamic> json) {
  return _CategoryParent.fromJson(json);
}

/// @nodoc
mixin _$CategoryParent {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this CategoryParent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryParentCopyWith<CategoryParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryParentCopyWith<$Res> {
  factory $CategoryParentCopyWith(
          CategoryParent value, $Res Function(CategoryParent) then) =
      _$CategoryParentCopyWithImpl<$Res, CategoryParent>;
  @useResult
  $Res call({String id, String name, String slug});
}

/// @nodoc
class _$CategoryParentCopyWithImpl<$Res, $Val extends CategoryParent>
    implements $CategoryParentCopyWith<$Res> {
  _$CategoryParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryParentImplCopyWith<$Res>
    implements $CategoryParentCopyWith<$Res> {
  factory _$$CategoryParentImplCopyWith(_$CategoryParentImpl value,
          $Res Function(_$CategoryParentImpl) then) =
      __$$CategoryParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String slug});
}

/// @nodoc
class __$$CategoryParentImplCopyWithImpl<$Res>
    extends _$CategoryParentCopyWithImpl<$Res, _$CategoryParentImpl>
    implements _$$CategoryParentImplCopyWith<$Res> {
  __$$CategoryParentImplCopyWithImpl(
      _$CategoryParentImpl _value, $Res Function(_$CategoryParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$CategoryParentImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryParentImpl implements _CategoryParent {
  const _$CategoryParentImpl(
      {required this.id, required this.name, required this.slug});

  factory _$CategoryParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryParentImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'CategoryParent(id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryParentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug);

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryParentImplCopyWith<_$CategoryParentImpl> get copyWith =>
      __$$CategoryParentImplCopyWithImpl<_$CategoryParentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryParentImplToJson(
      this,
    );
  }
}

abstract class _CategoryParent implements CategoryParent {
  const factory _CategoryParent(
      {required final String id,
      required final String name,
      required final String slug}) = _$CategoryParentImpl;

  factory _CategoryParent.fromJson(Map<String, dynamic> json) =
      _$CategoryParentImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryParentImplCopyWith<_$CategoryParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryCount _$CategoryCountFromJson(Map<String, dynamic> json) {
  return _CategoryCount.fromJson(json);
}

/// @nodoc
mixin _$CategoryCount {
  int get products => throw _privateConstructorUsedError;

  /// Serializes this CategoryCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCountCopyWith<CategoryCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCountCopyWith<$Res> {
  factory $CategoryCountCopyWith(
          CategoryCount value, $Res Function(CategoryCount) then) =
      _$CategoryCountCopyWithImpl<$Res, CategoryCount>;
  @useResult
  $Res call({int products});
}

/// @nodoc
class _$CategoryCountCopyWithImpl<$Res, $Val extends CategoryCount>
    implements $CategoryCountCopyWith<$Res> {
  _$CategoryCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryCountImplCopyWith<$Res>
    implements $CategoryCountCopyWith<$Res> {
  factory _$$CategoryCountImplCopyWith(
          _$CategoryCountImpl value, $Res Function(_$CategoryCountImpl) then) =
      __$$CategoryCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int products});
}

/// @nodoc
class __$$CategoryCountImplCopyWithImpl<$Res>
    extends _$CategoryCountCopyWithImpl<$Res, _$CategoryCountImpl>
    implements _$$CategoryCountImplCopyWith<$Res> {
  __$$CategoryCountImplCopyWithImpl(
      _$CategoryCountImpl _value, $Res Function(_$CategoryCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$CategoryCountImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryCountImpl implements _CategoryCount {
  const _$CategoryCountImpl({this.products = 0});

  factory _$CategoryCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryCountImplFromJson(json);

  @override
  @JsonKey()
  final int products;

  @override
  String toString() {
    return 'CategoryCount(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCountImpl &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, products);

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCountImplCopyWith<_$CategoryCountImpl> get copyWith =>
      __$$CategoryCountImplCopyWithImpl<_$CategoryCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryCountImplToJson(
      this,
    );
  }
}

abstract class _CategoryCount implements CategoryCount {
  const factory _CategoryCount({final int products}) = _$CategoryCountImpl;

  factory _CategoryCount.fromJson(Map<String, dynamic> json) =
      _$CategoryCountImpl.fromJson;

  @override
  int get products;

  /// Create a copy of CategoryCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryCountImplCopyWith<_$CategoryCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryListResponse _$CategoryListResponseFromJson(Map<String, dynamic> json) {
  return _CategoryListResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryListResponse {
  List<Category> get categories => throw _privateConstructorUsedError;

  /// Serializes this CategoryListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryListResponseCopyWith<CategoryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListResponseCopyWith<$Res> {
  factory $CategoryListResponseCopyWith(CategoryListResponse value,
          $Res Function(CategoryListResponse) then) =
      _$CategoryListResponseCopyWithImpl<$Res, CategoryListResponse>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class _$CategoryListResponseCopyWithImpl<$Res,
        $Val extends CategoryListResponse>
    implements $CategoryListResponseCopyWith<$Res> {
  _$CategoryListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryListResponseImplCopyWith<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  factory _$$CategoryListResponseImplCopyWith(_$CategoryListResponseImpl value,
          $Res Function(_$CategoryListResponseImpl) then) =
      __$$CategoryListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$CategoryListResponseImplCopyWithImpl<$Res>
    extends _$CategoryListResponseCopyWithImpl<$Res, _$CategoryListResponseImpl>
    implements _$$CategoryListResponseImplCopyWith<$Res> {
  __$$CategoryListResponseImplCopyWithImpl(_$CategoryListResponseImpl _value,
      $Res Function(_$CategoryListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoryListResponseImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryListResponseImpl implements _CategoryListResponse {
  const _$CategoryListResponseImpl({required final List<Category> categories})
      : _categories = categories;

  factory _$CategoryListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseImplFromJson(json);

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryListResponse(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListResponseImplCopyWith<_$CategoryListResponseImpl>
      get copyWith =>
          __$$CategoryListResponseImplCopyWithImpl<_$CategoryListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryListResponse implements CategoryListResponse {
  const factory _CategoryListResponse(
      {required final List<Category> categories}) = _$CategoryListResponseImpl;

  factory _CategoryListResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseImpl.fromJson;

  @override
  List<Category> get categories;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryListResponseImplCopyWith<_$CategoryListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
