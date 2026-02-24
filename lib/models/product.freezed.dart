// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  double get basePrice => throw _privateConstructorUsedError;
  double get sellingPrice => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  ProductCategory? get category => throw _privateConstructorUsedError;
  List<ProductVariant>? get variants => throw _privateConstructorUsedError;
  List<ProductImage>? get images => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? description,
      String brand,
      double basePrice,
      double sellingPrice,
      double discount,
      String gender,
      String? status,
      DateTime? createdAt,
      ProductCategory? category,
      List<ProductVariant>? variants,
      List<ProductImage>? images});

  $ProductCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? brand = null,
    Object? basePrice = null,
    Object? sellingPrice = null,
    Object? discount = null,
    Object? gender = null,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? category = freezed,
    Object? variants = freezed,
    Object? images = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariant>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ProductCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? description,
      String brand,
      double basePrice,
      double sellingPrice,
      double discount,
      String gender,
      String? status,
      DateTime? createdAt,
      ProductCategory? category,
      List<ProductVariant>? variants,
      List<ProductImage>? images});

  @override
  $ProductCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? brand = null,
    Object? basePrice = null,
    Object? sellingPrice = null,
    Object? discount = null,
    Object? gender = null,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? category = freezed,
    Object? variants = freezed,
    Object? images = freezed,
  }) {
    return _then(_$ProductImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double,
      sellingPrice: null == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariant>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.slug,
      this.description,
      required this.brand,
      required this.basePrice,
      required this.sellingPrice,
      required this.discount,
      required this.gender,
      this.status,
      this.createdAt,
      this.category,
      final List<ProductVariant>? variants,
      final List<ProductImage>? images})
      : _variants = variants,
        _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String brand;
  @override
  final double basePrice;
  @override
  final double sellingPrice;
  @override
  final double discount;
  @override
  final String gender;
  @override
  final String? status;
  @override
  final DateTime? createdAt;
  @override
  final ProductCategory? category;
  final List<ProductVariant>? _variants;
  @override
  List<ProductVariant>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductImage>? _images;
  @override
  List<ProductImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, slug: $slug, description: $description, brand: $brand, basePrice: $basePrice, sellingPrice: $sellingPrice, discount: $discount, gender: $gender, status: $status, createdAt: $createdAt, category: $category, variants: $variants, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      slug,
      description,
      brand,
      basePrice,
      sellingPrice,
      discount,
      gender,
      status,
      createdAt,
      category,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String name,
      required final String slug,
      final String? description,
      required final String brand,
      required final double basePrice,
      required final double sellingPrice,
      required final double discount,
      required final String gender,
      final String? status,
      final DateTime? createdAt,
      final ProductCategory? category,
      final List<ProductVariant>? variants,
      final List<ProductImage>? images}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String get brand;
  @override
  double get basePrice;
  @override
  double get sellingPrice;
  @override
  double get discount;
  @override
  String get gender;
  @override
  String? get status;
  @override
  DateTime? get createdAt;
  @override
  ProductCategory? get category;
  @override
  List<ProductVariant>? get variants;
  @override
  List<ProductImage>? get images;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductCategory {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  ProductCategoryParent? get parent => throw _privateConstructorUsedError;

  /// Serializes this ProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call(
      {String? id, String name, String slug, ProductCategoryParent? parent});

  $ProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? slug = null,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ProductCategoryParent?,
    ) as $Val);
  }

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ProductCategoryParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductCategoryImplCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$ProductCategoryImplCopyWith(_$ProductCategoryImpl value,
          $Res Function(_$ProductCategoryImpl) then) =
      __$$ProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String name, String slug, ProductCategoryParent? parent});

  @override
  $ProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$ProductCategoryImplCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$ProductCategoryImpl>
    implements _$$ProductCategoryImplCopyWith<$Res> {
  __$$ProductCategoryImplCopyWithImpl(
      _$ProductCategoryImpl _value, $Res Function(_$ProductCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? slug = null,
    Object? parent = freezed,
  }) {
    return _then(_$ProductCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ProductCategoryParent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryImpl implements _ProductCategory {
  const _$ProductCategoryImpl(
      {this.id, required this.name, required this.slug, this.parent});

  factory _$ProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final ProductCategoryParent? parent;

  @override
  String toString() {
    return 'ProductCategory(id: $id, name: $name, slug: $slug, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, parent);

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      __$$ProductCategoryImplCopyWithImpl<_$ProductCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
      {final String? id,
      required final String name,
      required final String slug,
      final ProductCategoryParent? parent}) = _$ProductCategoryImpl;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  ProductCategoryParent? get parent;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategoryParent _$ProductCategoryParentFromJson(
    Map<String, dynamic> json) {
  return _ProductCategoryParent.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryParent {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this ProductCategoryParent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryParentCopyWith<ProductCategoryParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryParentCopyWith<$Res> {
  factory $ProductCategoryParentCopyWith(ProductCategoryParent value,
          $Res Function(ProductCategoryParent) then) =
      _$ProductCategoryParentCopyWithImpl<$Res, ProductCategoryParent>;
  @useResult
  $Res call({String name, String slug});
}

/// @nodoc
class _$ProductCategoryParentCopyWithImpl<$Res,
        $Val extends ProductCategoryParent>
    implements $ProductCategoryParentCopyWith<$Res> {
  _$ProductCategoryParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$ProductCategoryParentImplCopyWith<$Res>
    implements $ProductCategoryParentCopyWith<$Res> {
  factory _$$ProductCategoryParentImplCopyWith(
          _$ProductCategoryParentImpl value,
          $Res Function(_$ProductCategoryParentImpl) then) =
      __$$ProductCategoryParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String slug});
}

/// @nodoc
class __$$ProductCategoryParentImplCopyWithImpl<$Res>
    extends _$ProductCategoryParentCopyWithImpl<$Res,
        _$ProductCategoryParentImpl>
    implements _$$ProductCategoryParentImplCopyWith<$Res> {
  __$$ProductCategoryParentImplCopyWithImpl(_$ProductCategoryParentImpl _value,
      $Res Function(_$ProductCategoryParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$ProductCategoryParentImpl(
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
class _$ProductCategoryParentImpl implements _ProductCategoryParent {
  const _$ProductCategoryParentImpl({required this.name, required this.slug});

  factory _$ProductCategoryParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryParentImplFromJson(json);

  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'ProductCategoryParent(name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryParentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug);

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryParentImplCopyWith<_$ProductCategoryParentImpl>
      get copyWith => __$$ProductCategoryParentImplCopyWithImpl<
          _$ProductCategoryParentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryParentImplToJson(
      this,
    );
  }
}

abstract class _ProductCategoryParent implements ProductCategoryParent {
  const factory _ProductCategoryParent(
      {required final String name,
      required final String slug}) = _$ProductCategoryParentImpl;

  factory _ProductCategoryParent.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryParentImpl.fromJson;

  @override
  String get name;
  @override
  String get slug;

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryParentImplCopyWith<_$ProductCategoryParentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductVariant _$ProductVariantFromJson(Map<String, dynamic> json) {
  return _ProductVariant.fromJson(json);
}

/// @nodoc
mixin _$ProductVariant {
  String get id => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get colorHex => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  /// Serializes this ProductVariant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariantCopyWith<ProductVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantCopyWith<$Res> {
  factory $ProductVariantCopyWith(
          ProductVariant value, $Res Function(ProductVariant) then) =
      _$ProductVariantCopyWithImpl<$Res, ProductVariant>;
  @useResult
  $Res call(
      {String id,
      String size,
      String color,
      String colorHex,
      String sku,
      int stock,
      double? price});
}

/// @nodoc
class _$ProductVariantCopyWithImpl<$Res, $Val extends ProductVariant>
    implements $ProductVariantCopyWith<$Res> {
  _$ProductVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? color = null,
    Object? colorHex = null,
    Object? sku = null,
    Object? stock = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantImplCopyWith<$Res>
    implements $ProductVariantCopyWith<$Res> {
  factory _$$ProductVariantImplCopyWith(_$ProductVariantImpl value,
          $Res Function(_$ProductVariantImpl) then) =
      __$$ProductVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String size,
      String color,
      String colorHex,
      String sku,
      int stock,
      double? price});
}

/// @nodoc
class __$$ProductVariantImplCopyWithImpl<$Res>
    extends _$ProductVariantCopyWithImpl<$Res, _$ProductVariantImpl>
    implements _$$ProductVariantImplCopyWith<$Res> {
  __$$ProductVariantImplCopyWithImpl(
      _$ProductVariantImpl _value, $Res Function(_$ProductVariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? color = null,
    Object? colorHex = null,
    Object? sku = null,
    Object? stock = null,
    Object? price = freezed,
  }) {
    return _then(_$ProductVariantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantImpl implements _ProductVariant {
  const _$ProductVariantImpl(
      {required this.id,
      required this.size,
      required this.color,
      required this.colorHex,
      required this.sku,
      required this.stock,
      this.price});

  factory _$ProductVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantImplFromJson(json);

  @override
  final String id;
  @override
  final String size;
  @override
  final String color;
  @override
  final String colorHex;
  @override
  final String sku;
  @override
  final int stock;
  @override
  final double? price;

  @override
  String toString() {
    return 'ProductVariant(id: $id, size: $size, color: $color, colorHex: $colorHex, sku: $sku, stock: $stock, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, size, color, colorHex, sku, stock, price);

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantImplCopyWith<_$ProductVariantImpl> get copyWith =>
      __$$ProductVariantImplCopyWithImpl<_$ProductVariantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantImplToJson(
      this,
    );
  }
}

abstract class _ProductVariant implements ProductVariant {
  const factory _ProductVariant(
      {required final String id,
      required final String size,
      required final String color,
      required final String colorHex,
      required final String sku,
      required final int stock,
      final double? price}) = _$ProductVariantImpl;

  factory _ProductVariant.fromJson(Map<String, dynamic> json) =
      _$ProductVariantImpl.fromJson;

  @override
  String get id;
  @override
  String get size;
  @override
  String get color;
  @override
  String get colorHex;
  @override
  String get sku;
  @override
  int get stock;
  @override
  double? get price;

  /// Create a copy of ProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariantImplCopyWith<_$ProductVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) {
  return _ProductImage.fromJson(json);
}

/// @nodoc
mixin _$ProductImage {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get altText => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageCopyWith<ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageCopyWith<$Res> {
  factory $ProductImageCopyWith(
          ProductImage value, $Res Function(ProductImage) then) =
      _$ProductImageCopyWithImpl<$Res, ProductImage>;
  @useResult
  $Res call(
      {String id, String url, String? altText, int sortOrder, bool isPrimary});
}

/// @nodoc
class _$ProductImageCopyWithImpl<$Res, $Val extends ProductImage>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? altText = freezed,
    Object? sortOrder = null,
    Object? isPrimary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      altText: freezed == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImageImplCopyWith<$Res>
    implements $ProductImageCopyWith<$Res> {
  factory _$$ProductImageImplCopyWith(
          _$ProductImageImpl value, $Res Function(_$ProductImageImpl) then) =
      __$$ProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String url, String? altText, int sortOrder, bool isPrimary});
}

/// @nodoc
class __$$ProductImageImplCopyWithImpl<$Res>
    extends _$ProductImageCopyWithImpl<$Res, _$ProductImageImpl>
    implements _$$ProductImageImplCopyWith<$Res> {
  __$$ProductImageImplCopyWithImpl(
      _$ProductImageImpl _value, $Res Function(_$ProductImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? altText = freezed,
    Object? sortOrder = null,
    Object? isPrimary = null,
  }) {
    return _then(_$ProductImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      altText: freezed == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImageImpl implements _ProductImage {
  const _$ProductImageImpl(
      {required this.id,
      required this.url,
      this.altText,
      this.sortOrder = 0,
      this.isPrimary = false});

  factory _$ProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageImplFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final String? altText;
  @override
  @JsonKey()
  final int sortOrder;
  @override
  @JsonKey()
  final bool isPrimary;

  @override
  String toString() {
    return 'ProductImage(id: $id, url: $url, altText: $altText, sortOrder: $sortOrder, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.altText, altText) || other.altText == altText) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, altText, sortOrder, isPrimary);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      __$$ProductImageImplCopyWithImpl<_$ProductImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageImplToJson(
      this,
    );
  }
}

abstract class _ProductImage implements ProductImage {
  const factory _ProductImage(
      {required final String id,
      required final String url,
      final String? altText,
      final int sortOrder,
      final bool isPrimary}) = _$ProductImageImpl;

  factory _ProductImage.fromJson(Map<String, dynamic> json) =
      _$ProductImageImpl.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  String? get altText;
  @override
  int get sortOrder;
  @override
  bool get isPrimary;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) {
  return _ProductListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductListResponse {
  List<Product> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Serializes this ProductListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListResponseCopyWith<ProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListResponseCopyWith<$Res> {
  factory $ProductListResponseCopyWith(
          ProductListResponse value, $Res Function(ProductListResponse) then) =
      _$ProductListResponseCopyWithImpl<$Res, ProductListResponse>;
  @useResult
  $Res call({List<Product> products, int total, int pages, int page});
}

/// @nodoc
class _$ProductListResponseCopyWithImpl<$Res, $Val extends ProductListResponse>
    implements $ProductListResponseCopyWith<$Res> {
  _$ProductListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? pages = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListResponseImplCopyWith<$Res>
    implements $ProductListResponseCopyWith<$Res> {
  factory _$$ProductListResponseImplCopyWith(_$ProductListResponseImpl value,
          $Res Function(_$ProductListResponseImpl) then) =
      __$$ProductListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products, int total, int pages, int page});
}

/// @nodoc
class __$$ProductListResponseImplCopyWithImpl<$Res>
    extends _$ProductListResponseCopyWithImpl<$Res, _$ProductListResponseImpl>
    implements _$$ProductListResponseImplCopyWith<$Res> {
  __$$ProductListResponseImplCopyWithImpl(_$ProductListResponseImpl _value,
      $Res Function(_$ProductListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? pages = null,
    Object? page = null,
  }) {
    return _then(_$ProductListResponseImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListResponseImpl implements _ProductListResponse {
  const _$ProductListResponseImpl(
      {required final List<Product> products,
      required this.total,
      required this.pages,
      required this.page})
      : _products = products;

  factory _$ProductListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListResponseImplFromJson(json);

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int total;
  @override
  final int pages;
  @override
  final int page;

  @override
  String toString() {
    return 'ProductListResponse(products: $products, total: $total, pages: $pages, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListResponseImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, pages, page);

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListResponseImplCopyWith<_$ProductListResponseImpl> get copyWith =>
      __$$ProductListResponseImplCopyWithImpl<_$ProductListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductListResponse implements ProductListResponse {
  const factory _ProductListResponse(
      {required final List<Product> products,
      required final int total,
      required final int pages,
      required final int page}) = _$ProductListResponseImpl;

  factory _ProductListResponse.fromJson(Map<String, dynamic> json) =
      _$ProductListResponseImpl.fromJson;

  @override
  List<Product> get products;
  @override
  int get total;
  @override
  int get pages;
  @override
  int get page;

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListResponseImplCopyWith<_$ProductListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailResponse _$ProductDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailResponse {
  Product get product => throw _privateConstructorUsedError;
  bool get isWishlisted => throw _privateConstructorUsedError;
  List<Product> get similarProducts => throw _privateConstructorUsedError;

  /// Serializes this ProductDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailResponseCopyWith<ProductDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailResponseCopyWith<$Res> {
  factory $ProductDetailResponseCopyWith(ProductDetailResponse value,
          $Res Function(ProductDetailResponse) then) =
      _$ProductDetailResponseCopyWithImpl<$Res, ProductDetailResponse>;
  @useResult
  $Res call(
      {Product product, bool isWishlisted, List<Product> similarProducts});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductDetailResponseCopyWithImpl<$Res,
        $Val extends ProductDetailResponse>
    implements $ProductDetailResponseCopyWith<$Res> {
  _$ProductDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isWishlisted = null,
    Object? similarProducts = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      isWishlisted: null == isWishlisted
          ? _value.isWishlisted
          : isWishlisted // ignore: cast_nullable_to_non_nullable
              as bool,
      similarProducts: null == similarProducts
          ? _value.similarProducts
          : similarProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailResponseImplCopyWith<$Res>
    implements $ProductDetailResponseCopyWith<$Res> {
  factory _$$ProductDetailResponseImplCopyWith(
          _$ProductDetailResponseImpl value,
          $Res Function(_$ProductDetailResponseImpl) then) =
      __$$ProductDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Product product, bool isWishlisted, List<Product> similarProducts});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductDetailResponseImplCopyWithImpl<$Res>
    extends _$ProductDetailResponseCopyWithImpl<$Res,
        _$ProductDetailResponseImpl>
    implements _$$ProductDetailResponseImplCopyWith<$Res> {
  __$$ProductDetailResponseImplCopyWithImpl(_$ProductDetailResponseImpl _value,
      $Res Function(_$ProductDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isWishlisted = null,
    Object? similarProducts = null,
  }) {
    return _then(_$ProductDetailResponseImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      isWishlisted: null == isWishlisted
          ? _value.isWishlisted
          : isWishlisted // ignore: cast_nullable_to_non_nullable
              as bool,
      similarProducts: null == similarProducts
          ? _value._similarProducts
          : similarProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailResponseImpl implements _ProductDetailResponse {
  const _$ProductDetailResponseImpl(
      {required this.product,
      required this.isWishlisted,
      required final List<Product> similarProducts})
      : _similarProducts = similarProducts;

  factory _$ProductDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailResponseImplFromJson(json);

  @override
  final Product product;
  @override
  final bool isWishlisted;
  final List<Product> _similarProducts;
  @override
  List<Product> get similarProducts {
    if (_similarProducts is EqualUnmodifiableListView) return _similarProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similarProducts);
  }

  @override
  String toString() {
    return 'ProductDetailResponse(product: $product, isWishlisted: $isWishlisted, similarProducts: $similarProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailResponseImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isWishlisted, isWishlisted) ||
                other.isWishlisted == isWishlisted) &&
            const DeepCollectionEquality()
                .equals(other._similarProducts, _similarProducts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, product, isWishlisted,
      const DeepCollectionEquality().hash(_similarProducts));

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => __$$ProductDetailResponseImplCopyWithImpl<
          _$ProductDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailResponse implements ProductDetailResponse {
  const factory _ProductDetailResponse(
          {required final Product product,
          required final bool isWishlisted,
          required final List<Product> similarProducts}) =
      _$ProductDetailResponseImpl;

  factory _ProductDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ProductDetailResponseImpl.fromJson;

  @override
  Product get product;
  @override
  bool get isWishlisted;
  @override
  List<Product> get similarProducts;

  /// Create a copy of ProductDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailResponseImplCopyWith<_$ProductDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
