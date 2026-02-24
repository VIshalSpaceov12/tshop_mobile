// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistItem _$WishlistItemFromJson(Map<String, dynamic> json) {
  return _WishlistItem.fromJson(json);
}

/// @nodoc
mixin _$WishlistItem {
  String get id => throw _privateConstructorUsedError;
  WishlistProduct get product => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WishlistItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistItemCopyWith<WishlistItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemCopyWith<$Res> {
  factory $WishlistItemCopyWith(
          WishlistItem value, $Res Function(WishlistItem) then) =
      _$WishlistItemCopyWithImpl<$Res, WishlistItem>;
  @useResult
  $Res call({String id, WishlistProduct product, DateTime? createdAt});

  $WishlistProductCopyWith<$Res> get product;
}

/// @nodoc
class _$WishlistItemCopyWithImpl<$Res, $Val extends WishlistItem>
    implements $WishlistItemCopyWith<$Res> {
  _$WishlistItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as WishlistProduct,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of WishlistItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WishlistProductCopyWith<$Res> get product {
    return $WishlistProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WishlistItemImplCopyWith<$Res>
    implements $WishlistItemCopyWith<$Res> {
  factory _$$WishlistItemImplCopyWith(
          _$WishlistItemImpl value, $Res Function(_$WishlistItemImpl) then) =
      __$$WishlistItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, WishlistProduct product, DateTime? createdAt});

  @override
  $WishlistProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$WishlistItemImplCopyWithImpl<$Res>
    extends _$WishlistItemCopyWithImpl<$Res, _$WishlistItemImpl>
    implements _$$WishlistItemImplCopyWith<$Res> {
  __$$WishlistItemImplCopyWithImpl(
      _$WishlistItemImpl _value, $Res Function(_$WishlistItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$WishlistItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as WishlistProduct,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistItemImpl implements _WishlistItem {
  const _$WishlistItemImpl(
      {required this.id, required this.product, this.createdAt});

  factory _$WishlistItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistItemImplFromJson(json);

  @override
  final String id;
  @override
  final WishlistProduct product;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'WishlistItem(id: $id, product: $product, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, product, createdAt);

  /// Create a copy of WishlistItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemImplCopyWith<_$WishlistItemImpl> get copyWith =>
      __$$WishlistItemImplCopyWithImpl<_$WishlistItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistItemImplToJson(
      this,
    );
  }
}

abstract class _WishlistItem implements WishlistItem {
  const factory _WishlistItem(
      {required final String id,
      required final WishlistProduct product,
      final DateTime? createdAt}) = _$WishlistItemImpl;

  factory _WishlistItem.fromJson(Map<String, dynamic> json) =
      _$WishlistItemImpl.fromJson;

  @override
  String get id;
  @override
  WishlistProduct get product;
  @override
  DateTime? get createdAt;

  /// Create a copy of WishlistItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistItemImplCopyWith<_$WishlistItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishlistProduct _$WishlistProductFromJson(Map<String, dynamic> json) {
  return _WishlistProduct.fromJson(json);
}

/// @nodoc
mixin _$WishlistProduct {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  double get basePrice => throw _privateConstructorUsedError;
  double get sellingPrice => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  List<ProductImage>? get images => throw _privateConstructorUsedError;

  /// Serializes this WishlistProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistProductCopyWith<WishlistProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistProductCopyWith<$Res> {
  factory $WishlistProductCopyWith(
          WishlistProduct value, $Res Function(WishlistProduct) then) =
      _$WishlistProductCopyWithImpl<$Res, WishlistProduct>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String brand,
      double basePrice,
      double sellingPrice,
      double discount,
      List<ProductImage>? images});
}

/// @nodoc
class _$WishlistProductCopyWithImpl<$Res, $Val extends WishlistProduct>
    implements $WishlistProductCopyWith<$Res> {
  _$WishlistProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? brand = null,
    Object? basePrice = null,
    Object? sellingPrice = null,
    Object? discount = null,
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
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistProductImplCopyWith<$Res>
    implements $WishlistProductCopyWith<$Res> {
  factory _$$WishlistProductImplCopyWith(_$WishlistProductImpl value,
          $Res Function(_$WishlistProductImpl) then) =
      __$$WishlistProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String brand,
      double basePrice,
      double sellingPrice,
      double discount,
      List<ProductImage>? images});
}

/// @nodoc
class __$$WishlistProductImplCopyWithImpl<$Res>
    extends _$WishlistProductCopyWithImpl<$Res, _$WishlistProductImpl>
    implements _$$WishlistProductImplCopyWith<$Res> {
  __$$WishlistProductImplCopyWithImpl(
      _$WishlistProductImpl _value, $Res Function(_$WishlistProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? brand = null,
    Object? basePrice = null,
    Object? sellingPrice = null,
    Object? discount = null,
    Object? images = freezed,
  }) {
    return _then(_$WishlistProductImpl(
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
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistProductImpl implements _WishlistProduct {
  const _$WishlistProductImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.brand,
      required this.basePrice,
      required this.sellingPrice,
      required this.discount,
      final List<ProductImage>? images})
      : _images = images;

  factory _$WishlistProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistProductImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String brand;
  @override
  final double basePrice;
  @override
  final double sellingPrice;
  @override
  final double discount;
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
    return 'WishlistProduct(id: $id, name: $name, slug: $slug, brand: $brand, basePrice: $basePrice, sellingPrice: $sellingPrice, discount: $discount, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, brand, basePrice,
      sellingPrice, discount, const DeepCollectionEquality().hash(_images));

  /// Create a copy of WishlistProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistProductImplCopyWith<_$WishlistProductImpl> get copyWith =>
      __$$WishlistProductImplCopyWithImpl<_$WishlistProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistProductImplToJson(
      this,
    );
  }
}

abstract class _WishlistProduct implements WishlistProduct {
  const factory _WishlistProduct(
      {required final String id,
      required final String name,
      required final String slug,
      required final String brand,
      required final double basePrice,
      required final double sellingPrice,
      required final double discount,
      final List<ProductImage>? images}) = _$WishlistProductImpl;

  factory _WishlistProduct.fromJson(Map<String, dynamic> json) =
      _$WishlistProductImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String get brand;
  @override
  double get basePrice;
  @override
  double get sellingPrice;
  @override
  double get discount;
  @override
  List<ProductImage>? get images;

  /// Create a copy of WishlistProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistProductImplCopyWith<_$WishlistProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishlistResponse _$WishlistResponseFromJson(Map<String, dynamic> json) {
  return _WishlistResponse.fromJson(json);
}

/// @nodoc
mixin _$WishlistResponse {
  List<WishlistItem> get items => throw _privateConstructorUsedError;

  /// Serializes this WishlistResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistResponseCopyWith<WishlistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistResponseCopyWith<$Res> {
  factory $WishlistResponseCopyWith(
          WishlistResponse value, $Res Function(WishlistResponse) then) =
      _$WishlistResponseCopyWithImpl<$Res, WishlistResponse>;
  @useResult
  $Res call({List<WishlistItem> items});
}

/// @nodoc
class _$WishlistResponseCopyWithImpl<$Res, $Val extends WishlistResponse>
    implements $WishlistResponseCopyWith<$Res> {
  _$WishlistResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WishlistItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistResponseImplCopyWith<$Res>
    implements $WishlistResponseCopyWith<$Res> {
  factory _$$WishlistResponseImplCopyWith(_$WishlistResponseImpl value,
          $Res Function(_$WishlistResponseImpl) then) =
      __$$WishlistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WishlistItem> items});
}

/// @nodoc
class __$$WishlistResponseImplCopyWithImpl<$Res>
    extends _$WishlistResponseCopyWithImpl<$Res, _$WishlistResponseImpl>
    implements _$$WishlistResponseImplCopyWith<$Res> {
  __$$WishlistResponseImplCopyWithImpl(_$WishlistResponseImpl _value,
      $Res Function(_$WishlistResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$WishlistResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WishlistItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistResponseImpl implements _WishlistResponse {
  const _$WishlistResponseImpl({required final List<WishlistItem> items})
      : _items = items;

  factory _$WishlistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistResponseImplFromJson(json);

  final List<WishlistItem> _items;
  @override
  List<WishlistItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'WishlistResponse(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of WishlistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistResponseImplCopyWith<_$WishlistResponseImpl> get copyWith =>
      __$$WishlistResponseImplCopyWithImpl<_$WishlistResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistResponseImplToJson(
      this,
    );
  }
}

abstract class _WishlistResponse implements WishlistResponse {
  const factory _WishlistResponse({required final List<WishlistItem> items}) =
      _$WishlistResponseImpl;

  factory _WishlistResponse.fromJson(Map<String, dynamic> json) =
      _$WishlistResponseImpl.fromJson;

  @override
  List<WishlistItem> get items;

  /// Create a copy of WishlistResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistResponseImplCopyWith<_$WishlistResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishlistToggleResponse _$WishlistToggleResponseFromJson(
    Map<String, dynamic> json) {
  return _WishlistToggleResponse.fromJson(json);
}

/// @nodoc
mixin _$WishlistToggleResponse {
  bool get wishlisted => throw _privateConstructorUsedError;

  /// Serializes this WishlistToggleResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishlistToggleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishlistToggleResponseCopyWith<WishlistToggleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistToggleResponseCopyWith<$Res> {
  factory $WishlistToggleResponseCopyWith(WishlistToggleResponse value,
          $Res Function(WishlistToggleResponse) then) =
      _$WishlistToggleResponseCopyWithImpl<$Res, WishlistToggleResponse>;
  @useResult
  $Res call({bool wishlisted});
}

/// @nodoc
class _$WishlistToggleResponseCopyWithImpl<$Res,
        $Val extends WishlistToggleResponse>
    implements $WishlistToggleResponseCopyWith<$Res> {
  _$WishlistToggleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishlistToggleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlisted = null,
  }) {
    return _then(_value.copyWith(
      wishlisted: null == wishlisted
          ? _value.wishlisted
          : wishlisted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistToggleResponseImplCopyWith<$Res>
    implements $WishlistToggleResponseCopyWith<$Res> {
  factory _$$WishlistToggleResponseImplCopyWith(
          _$WishlistToggleResponseImpl value,
          $Res Function(_$WishlistToggleResponseImpl) then) =
      __$$WishlistToggleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool wishlisted});
}

/// @nodoc
class __$$WishlistToggleResponseImplCopyWithImpl<$Res>
    extends _$WishlistToggleResponseCopyWithImpl<$Res,
        _$WishlistToggleResponseImpl>
    implements _$$WishlistToggleResponseImplCopyWith<$Res> {
  __$$WishlistToggleResponseImplCopyWithImpl(
      _$WishlistToggleResponseImpl _value,
      $Res Function(_$WishlistToggleResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishlistToggleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlisted = null,
  }) {
    return _then(_$WishlistToggleResponseImpl(
      wishlisted: null == wishlisted
          ? _value.wishlisted
          : wishlisted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistToggleResponseImpl implements _WishlistToggleResponse {
  const _$WishlistToggleResponseImpl({required this.wishlisted});

  factory _$WishlistToggleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistToggleResponseImplFromJson(json);

  @override
  final bool wishlisted;

  @override
  String toString() {
    return 'WishlistToggleResponse(wishlisted: $wishlisted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistToggleResponseImpl &&
            (identical(other.wishlisted, wishlisted) ||
                other.wishlisted == wishlisted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, wishlisted);

  /// Create a copy of WishlistToggleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistToggleResponseImplCopyWith<_$WishlistToggleResponseImpl>
      get copyWith => __$$WishlistToggleResponseImplCopyWithImpl<
          _$WishlistToggleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistToggleResponseImplToJson(
      this,
    );
  }
}

abstract class _WishlistToggleResponse implements WishlistToggleResponse {
  const factory _WishlistToggleResponse({required final bool wishlisted}) =
      _$WishlistToggleResponseImpl;

  factory _WishlistToggleResponse.fromJson(Map<String, dynamic> json) =
      _$WishlistToggleResponseImpl.fromJson;

  @override
  bool get wishlisted;

  /// Create a copy of WishlistToggleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishlistToggleResponseImplCopyWith<_$WishlistToggleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
