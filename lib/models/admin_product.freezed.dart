// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminProduct _$AdminProductFromJson(Map<String, dynamic> json) {
  return _AdminProduct.fromJson(json);
}

/// @nodoc
mixin _$AdminProduct {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  double get basePrice => throw _privateConstructorUsedError;
  double get sellingPrice => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  AdminProductCategory? get category => throw _privateConstructorUsedError;
  List<AdminProductImage> get images => throw _privateConstructorUsedError;
  @JsonKey(name: '_count')
  AdminProductCount? get countData => throw _privateConstructorUsedError;
  List<AdminProductVariant> get variants => throw _privateConstructorUsedError;

  /// Serializes this AdminProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProductCopyWith<AdminProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductCopyWith<$Res> {
  factory $AdminProductCopyWith(
          AdminProduct value, $Res Function(AdminProduct) then) =
      _$AdminProductCopyWithImpl<$Res, AdminProduct>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? description,
      String? brand,
      double basePrice,
      double sellingPrice,
      double discount,
      String status,
      String gender,
      String? categoryId,
      DateTime createdAt,
      DateTime updatedAt,
      AdminProductCategory? category,
      List<AdminProductImage> images,
      @JsonKey(name: '_count') AdminProductCount? countData,
      List<AdminProductVariant> variants});

  $AdminProductCategoryCopyWith<$Res>? get category;
  $AdminProductCountCopyWith<$Res>? get countData;
}

/// @nodoc
class _$AdminProductCopyWithImpl<$Res, $Val extends AdminProduct>
    implements $AdminProductCopyWith<$Res> {
  _$AdminProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? brand = freezed,
    Object? basePrice = null,
    Object? sellingPrice = null,
    Object? discount = null,
    Object? status = null,
    Object? gender = null,
    Object? categoryId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = freezed,
    Object? images = null,
    Object? countData = freezed,
    Object? variants = null,
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
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AdminProductCategory?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AdminProductImage>,
      countData: freezed == countData
          ? _value.countData
          : countData // ignore: cast_nullable_to_non_nullable
              as AdminProductCount?,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<AdminProductVariant>,
    ) as $Val);
  }

  /// Create a copy of AdminProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProductCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $AdminProductCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of AdminProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminProductCountCopyWith<$Res>? get countData {
    if (_value.countData == null) {
      return null;
    }

    return $AdminProductCountCopyWith<$Res>(_value.countData!, (value) {
      return _then(_value.copyWith(countData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminProductImplCopyWith<$Res>
    implements $AdminProductCopyWith<$Res> {
  factory _$$AdminProductImplCopyWith(
          _$AdminProductImpl value, $Res Function(_$AdminProductImpl) then) =
      __$$AdminProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? description,
      String? brand,
      double basePrice,
      double sellingPrice,
      double discount,
      String status,
      String gender,
      String? categoryId,
      DateTime createdAt,
      DateTime updatedAt,
      AdminProductCategory? category,
      List<AdminProductImage> images,
      @JsonKey(name: '_count') AdminProductCount? countData,
      List<AdminProductVariant> variants});

  @override
  $AdminProductCategoryCopyWith<$Res>? get category;
  @override
  $AdminProductCountCopyWith<$Res>? get countData;
}

/// @nodoc
class __$$AdminProductImplCopyWithImpl<$Res>
    extends _$AdminProductCopyWithImpl<$Res, _$AdminProductImpl>
    implements _$$AdminProductImplCopyWith<$Res> {
  __$$AdminProductImplCopyWithImpl(
      _$AdminProductImpl _value, $Res Function(_$AdminProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? description = freezed,
    Object? brand = freezed,
    Object? basePrice = null,
    Object? sellingPrice = null,
    Object? discount = null,
    Object? status = null,
    Object? gender = null,
    Object? categoryId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = freezed,
    Object? images = null,
    Object? countData = freezed,
    Object? variants = null,
  }) {
    return _then(_$AdminProductImpl(
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
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AdminProductCategory?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AdminProductImage>,
      countData: freezed == countData
          ? _value.countData
          : countData // ignore: cast_nullable_to_non_nullable
              as AdminProductCount?,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<AdminProductVariant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminProductImpl implements _AdminProduct {
  const _$AdminProductImpl(
      {required this.id,
      required this.name,
      required this.slug,
      this.description,
      this.brand,
      required this.basePrice,
      required this.sellingPrice,
      this.discount = 0,
      required this.status,
      required this.gender,
      this.categoryId,
      required this.createdAt,
      required this.updatedAt,
      this.category,
      final List<AdminProductImage> images = const [],
      @JsonKey(name: '_count') this.countData,
      final List<AdminProductVariant> variants = const []})
      : _images = images,
        _variants = variants;

  factory _$AdminProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProductImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? description;
  @override
  final String? brand;
  @override
  final double basePrice;
  @override
  final double sellingPrice;
  @override
  @JsonKey()
  final double discount;
  @override
  final String status;
  @override
  final String gender;
  @override
  final String? categoryId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final AdminProductCategory? category;
  final List<AdminProductImage> _images;
  @override
  @JsonKey()
  List<AdminProductImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: '_count')
  final AdminProductCount? countData;
  final List<AdminProductVariant> _variants;
  @override
  @JsonKey()
  List<AdminProductVariant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'AdminProduct(id: $id, name: $name, slug: $slug, description: $description, brand: $brand, basePrice: $basePrice, sellingPrice: $sellingPrice, discount: $discount, status: $status, gender: $gender, categoryId: $categoryId, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, images: $images, countData: $countData, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProductImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.countData, countData) ||
                other.countData == countData) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
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
      status,
      gender,
      categoryId,
      createdAt,
      updatedAt,
      category,
      const DeepCollectionEquality().hash(_images),
      countData,
      const DeepCollectionEquality().hash(_variants));

  /// Create a copy of AdminProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProductImplCopyWith<_$AdminProductImpl> get copyWith =>
      __$$AdminProductImplCopyWithImpl<_$AdminProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProductImplToJson(
      this,
    );
  }
}

abstract class _AdminProduct implements AdminProduct {
  const factory _AdminProduct(
      {required final String id,
      required final String name,
      required final String slug,
      final String? description,
      final String? brand,
      required final double basePrice,
      required final double sellingPrice,
      final double discount,
      required final String status,
      required final String gender,
      final String? categoryId,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final AdminProductCategory? category,
      final List<AdminProductImage> images,
      @JsonKey(name: '_count') final AdminProductCount? countData,
      final List<AdminProductVariant> variants}) = _$AdminProductImpl;

  factory _AdminProduct.fromJson(Map<String, dynamic> json) =
      _$AdminProductImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get description;
  @override
  String? get brand;
  @override
  double get basePrice;
  @override
  double get sellingPrice;
  @override
  double get discount;
  @override
  String get status;
  @override
  String get gender;
  @override
  String? get categoryId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  AdminProductCategory? get category;
  @override
  List<AdminProductImage> get images;
  @override
  @JsonKey(name: '_count')
  AdminProductCount? get countData;
  @override
  List<AdminProductVariant> get variants;

  /// Create a copy of AdminProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProductImplCopyWith<_$AdminProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminProductCategory _$AdminProductCategoryFromJson(Map<String, dynamic> json) {
  return _AdminProductCategory.fromJson(json);
}

/// @nodoc
mixin _$AdminProductCategory {
  String get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  /// Serializes this AdminProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProductCategoryCopyWith<AdminProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductCategoryCopyWith<$Res> {
  factory $AdminProductCategoryCopyWith(AdminProductCategory value,
          $Res Function(AdminProductCategory) then) =
      _$AdminProductCategoryCopyWithImpl<$Res, AdminProductCategory>;
  @useResult
  $Res call({String name, String? slug});
}

/// @nodoc
class _$AdminProductCategoryCopyWithImpl<$Res,
        $Val extends AdminProductCategory>
    implements $AdminProductCategoryCopyWith<$Res> {
  _$AdminProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminProductCategoryImplCopyWith<$Res>
    implements $AdminProductCategoryCopyWith<$Res> {
  factory _$$AdminProductCategoryImplCopyWith(_$AdminProductCategoryImpl value,
          $Res Function(_$AdminProductCategoryImpl) then) =
      __$$AdminProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? slug});
}

/// @nodoc
class __$$AdminProductCategoryImplCopyWithImpl<$Res>
    extends _$AdminProductCategoryCopyWithImpl<$Res, _$AdminProductCategoryImpl>
    implements _$$AdminProductCategoryImplCopyWith<$Res> {
  __$$AdminProductCategoryImplCopyWithImpl(_$AdminProductCategoryImpl _value,
      $Res Function(_$AdminProductCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = freezed,
  }) {
    return _then(_$AdminProductCategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminProductCategoryImpl implements _AdminProductCategory {
  const _$AdminProductCategoryImpl({required this.name, this.slug});

  factory _$AdminProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProductCategoryImplFromJson(json);

  @override
  final String name;
  @override
  final String? slug;

  @override
  String toString() {
    return 'AdminProductCategory(name: $name, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProductCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, slug);

  /// Create a copy of AdminProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProductCategoryImplCopyWith<_$AdminProductCategoryImpl>
      get copyWith =>
          __$$AdminProductCategoryImplCopyWithImpl<_$AdminProductCategoryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _AdminProductCategory implements AdminProductCategory {
  const factory _AdminProductCategory(
      {required final String name,
      final String? slug}) = _$AdminProductCategoryImpl;

  factory _AdminProductCategory.fromJson(Map<String, dynamic> json) =
      _$AdminProductCategoryImpl.fromJson;

  @override
  String get name;
  @override
  String? get slug;

  /// Create a copy of AdminProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProductCategoryImplCopyWith<_$AdminProductCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminProductImage _$AdminProductImageFromJson(Map<String, dynamic> json) {
  return _AdminProductImage.fromJson(json);
}

/// @nodoc
mixin _$AdminProductImage {
  String? get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get altText => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;

  /// Serializes this AdminProductImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProductImageCopyWith<AdminProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductImageCopyWith<$Res> {
  factory $AdminProductImageCopyWith(
          AdminProductImage value, $Res Function(AdminProductImage) then) =
      _$AdminProductImageCopyWithImpl<$Res, AdminProductImage>;
  @useResult
  $Res call(
      {String? id, String url, String? altText, int sortOrder, bool isPrimary});
}

/// @nodoc
class _$AdminProductImageCopyWithImpl<$Res, $Val extends AdminProductImage>
    implements $AdminProductImageCopyWith<$Res> {
  _$AdminProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = null,
    Object? altText = freezed,
    Object? sortOrder = null,
    Object? isPrimary = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$AdminProductImageImplCopyWith<$Res>
    implements $AdminProductImageCopyWith<$Res> {
  factory _$$AdminProductImageImplCopyWith(_$AdminProductImageImpl value,
          $Res Function(_$AdminProductImageImpl) then) =
      __$$AdminProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String url, String? altText, int sortOrder, bool isPrimary});
}

/// @nodoc
class __$$AdminProductImageImplCopyWithImpl<$Res>
    extends _$AdminProductImageCopyWithImpl<$Res, _$AdminProductImageImpl>
    implements _$$AdminProductImageImplCopyWith<$Res> {
  __$$AdminProductImageImplCopyWithImpl(_$AdminProductImageImpl _value,
      $Res Function(_$AdminProductImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = null,
    Object? altText = freezed,
    Object? sortOrder = null,
    Object? isPrimary = null,
  }) {
    return _then(_$AdminProductImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$AdminProductImageImpl implements _AdminProductImage {
  const _$AdminProductImageImpl(
      {this.id,
      required this.url,
      this.altText,
      this.sortOrder = 0,
      this.isPrimary = false});

  factory _$AdminProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProductImageImplFromJson(json);

  @override
  final String? id;
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
    return 'AdminProductImage(id: $id, url: $url, altText: $altText, sortOrder: $sortOrder, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProductImageImpl &&
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

  /// Create a copy of AdminProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProductImageImplCopyWith<_$AdminProductImageImpl> get copyWith =>
      __$$AdminProductImageImplCopyWithImpl<_$AdminProductImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProductImageImplToJson(
      this,
    );
  }
}

abstract class _AdminProductImage implements AdminProductImage {
  const factory _AdminProductImage(
      {final String? id,
      required final String url,
      final String? altText,
      final int sortOrder,
      final bool isPrimary}) = _$AdminProductImageImpl;

  factory _AdminProductImage.fromJson(Map<String, dynamic> json) =
      _$AdminProductImageImpl.fromJson;

  @override
  String? get id;
  @override
  String get url;
  @override
  String? get altText;
  @override
  int get sortOrder;
  @override
  bool get isPrimary;

  /// Create a copy of AdminProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProductImageImplCopyWith<_$AdminProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminProductVariant _$AdminProductVariantFromJson(Map<String, dynamic> json) {
  return _AdminProductVariant.fromJson(json);
}

/// @nodoc
mixin _$AdminProductVariant {
  String? get id => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get colorHex => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  /// Serializes this AdminProductVariant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProductVariantCopyWith<AdminProductVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductVariantCopyWith<$Res> {
  factory $AdminProductVariantCopyWith(
          AdminProductVariant value, $Res Function(AdminProductVariant) then) =
      _$AdminProductVariantCopyWithImpl<$Res, AdminProductVariant>;
  @useResult
  $Res call(
      {String? id,
      String size,
      String color,
      String colorHex,
      String? sku,
      int stock,
      double? price});
}

/// @nodoc
class _$AdminProductVariantCopyWithImpl<$Res, $Val extends AdminProductVariant>
    implements $AdminProductVariantCopyWith<$Res> {
  _$AdminProductVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? size = null,
    Object? color = null,
    Object? colorHex = null,
    Object? sku = freezed,
    Object? stock = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$AdminProductVariantImplCopyWith<$Res>
    implements $AdminProductVariantCopyWith<$Res> {
  factory _$$AdminProductVariantImplCopyWith(_$AdminProductVariantImpl value,
          $Res Function(_$AdminProductVariantImpl) then) =
      __$$AdminProductVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String size,
      String color,
      String colorHex,
      String? sku,
      int stock,
      double? price});
}

/// @nodoc
class __$$AdminProductVariantImplCopyWithImpl<$Res>
    extends _$AdminProductVariantCopyWithImpl<$Res, _$AdminProductVariantImpl>
    implements _$$AdminProductVariantImplCopyWith<$Res> {
  __$$AdminProductVariantImplCopyWithImpl(_$AdminProductVariantImpl _value,
      $Res Function(_$AdminProductVariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? size = null,
    Object? color = null,
    Object? colorHex = null,
    Object? sku = freezed,
    Object? stock = null,
    Object? price = freezed,
  }) {
    return _then(_$AdminProductVariantImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$AdminProductVariantImpl implements _AdminProductVariant {
  const _$AdminProductVariantImpl(
      {this.id,
      required this.size,
      required this.color,
      required this.colorHex,
      this.sku,
      this.stock = 0,
      this.price});

  factory _$AdminProductVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProductVariantImplFromJson(json);

  @override
  final String? id;
  @override
  final String size;
  @override
  final String color;
  @override
  final String colorHex;
  @override
  final String? sku;
  @override
  @JsonKey()
  final int stock;
  @override
  final double? price;

  @override
  String toString() {
    return 'AdminProductVariant(id: $id, size: $size, color: $color, colorHex: $colorHex, sku: $sku, stock: $stock, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProductVariantImpl &&
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

  /// Create a copy of AdminProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProductVariantImplCopyWith<_$AdminProductVariantImpl> get copyWith =>
      __$$AdminProductVariantImplCopyWithImpl<_$AdminProductVariantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProductVariantImplToJson(
      this,
    );
  }
}

abstract class _AdminProductVariant implements AdminProductVariant {
  const factory _AdminProductVariant(
      {final String? id,
      required final String size,
      required final String color,
      required final String colorHex,
      final String? sku,
      final int stock,
      final double? price}) = _$AdminProductVariantImpl;

  factory _AdminProductVariant.fromJson(Map<String, dynamic> json) =
      _$AdminProductVariantImpl.fromJson;

  @override
  String? get id;
  @override
  String get size;
  @override
  String get color;
  @override
  String get colorHex;
  @override
  String? get sku;
  @override
  int get stock;
  @override
  double? get price;

  /// Create a copy of AdminProductVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProductVariantImplCopyWith<_$AdminProductVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminProductCount _$AdminProductCountFromJson(Map<String, dynamic> json) {
  return _AdminProductCount.fromJson(json);
}

/// @nodoc
mixin _$AdminProductCount {
  int get variants => throw _privateConstructorUsedError;

  /// Serializes this AdminProductCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProductCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProductCountCopyWith<AdminProductCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductCountCopyWith<$Res> {
  factory $AdminProductCountCopyWith(
          AdminProductCount value, $Res Function(AdminProductCount) then) =
      _$AdminProductCountCopyWithImpl<$Res, AdminProductCount>;
  @useResult
  $Res call({int variants});
}

/// @nodoc
class _$AdminProductCountCopyWithImpl<$Res, $Val extends AdminProductCount>
    implements $AdminProductCountCopyWith<$Res> {
  _$AdminProductCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProductCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminProductCountImplCopyWith<$Res>
    implements $AdminProductCountCopyWith<$Res> {
  factory _$$AdminProductCountImplCopyWith(_$AdminProductCountImpl value,
          $Res Function(_$AdminProductCountImpl) then) =
      __$$AdminProductCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int variants});
}

/// @nodoc
class __$$AdminProductCountImplCopyWithImpl<$Res>
    extends _$AdminProductCountCopyWithImpl<$Res, _$AdminProductCountImpl>
    implements _$$AdminProductCountImplCopyWith<$Res> {
  __$$AdminProductCountImplCopyWithImpl(_$AdminProductCountImpl _value,
      $Res Function(_$AdminProductCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProductCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variants = null,
  }) {
    return _then(_$AdminProductCountImpl(
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminProductCountImpl implements _AdminProductCount {
  const _$AdminProductCountImpl({this.variants = 0});

  factory _$AdminProductCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProductCountImplFromJson(json);

  @override
  @JsonKey()
  final int variants;

  @override
  String toString() {
    return 'AdminProductCount(variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProductCountImpl &&
            (identical(other.variants, variants) ||
                other.variants == variants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variants);

  /// Create a copy of AdminProductCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProductCountImplCopyWith<_$AdminProductCountImpl> get copyWith =>
      __$$AdminProductCountImplCopyWithImpl<_$AdminProductCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProductCountImplToJson(
      this,
    );
  }
}

abstract class _AdminProductCount implements AdminProductCount {
  const factory _AdminProductCount({final int variants}) =
      _$AdminProductCountImpl;

  factory _AdminProductCount.fromJson(Map<String, dynamic> json) =
      _$AdminProductCountImpl.fromJson;

  @override
  int get variants;

  /// Create a copy of AdminProductCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProductCountImplCopyWith<_$AdminProductCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminProductListResponse _$AdminProductListResponseFromJson(
    Map<String, dynamic> json) {
  return _AdminProductListResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminProductListResponse {
  List<AdminProduct> get products => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Serializes this AdminProductListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminProductListResponseCopyWith<AdminProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminProductListResponseCopyWith<$Res> {
  factory $AdminProductListResponseCopyWith(AdminProductListResponse value,
          $Res Function(AdminProductListResponse) then) =
      _$AdminProductListResponseCopyWithImpl<$Res, AdminProductListResponse>;
  @useResult
  $Res call({List<AdminProduct> products, int total, int pages, int page});
}

/// @nodoc
class _$AdminProductListResponseCopyWithImpl<$Res,
        $Val extends AdminProductListResponse>
    implements $AdminProductListResponseCopyWith<$Res> {
  _$AdminProductListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminProductListResponse
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
              as List<AdminProduct>,
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
abstract class _$$AdminProductListResponseImplCopyWith<$Res>
    implements $AdminProductListResponseCopyWith<$Res> {
  factory _$$AdminProductListResponseImplCopyWith(
          _$AdminProductListResponseImpl value,
          $Res Function(_$AdminProductListResponseImpl) then) =
      __$$AdminProductListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AdminProduct> products, int total, int pages, int page});
}

/// @nodoc
class __$$AdminProductListResponseImplCopyWithImpl<$Res>
    extends _$AdminProductListResponseCopyWithImpl<$Res,
        _$AdminProductListResponseImpl>
    implements _$$AdminProductListResponseImplCopyWith<$Res> {
  __$$AdminProductListResponseImplCopyWithImpl(
      _$AdminProductListResponseImpl _value,
      $Res Function(_$AdminProductListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? pages = null,
    Object? page = null,
  }) {
    return _then(_$AdminProductListResponseImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AdminProduct>,
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
class _$AdminProductListResponseImpl implements _AdminProductListResponse {
  const _$AdminProductListResponseImpl(
      {required final List<AdminProduct> products,
      required this.total,
      required this.pages,
      required this.page})
      : _products = products;

  factory _$AdminProductListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminProductListResponseImplFromJson(json);

  final List<AdminProduct> _products;
  @override
  List<AdminProduct> get products {
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
    return 'AdminProductListResponse(products: $products, total: $total, pages: $pages, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminProductListResponseImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, pages, page);

  /// Create a copy of AdminProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminProductListResponseImplCopyWith<_$AdminProductListResponseImpl>
      get copyWith => __$$AdminProductListResponseImplCopyWithImpl<
          _$AdminProductListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminProductListResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminProductListResponse implements AdminProductListResponse {
  const factory _AdminProductListResponse(
      {required final List<AdminProduct> products,
      required final int total,
      required final int pages,
      required final int page}) = _$AdminProductListResponseImpl;

  factory _AdminProductListResponse.fromJson(Map<String, dynamic> json) =
      _$AdminProductListResponseImpl.fromJson;

  @override
  List<AdminProduct> get products;
  @override
  int get total;
  @override
  int get pages;
  @override
  int get page;

  /// Create a copy of AdminProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminProductListResponseImplCopyWith<_$AdminProductListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
