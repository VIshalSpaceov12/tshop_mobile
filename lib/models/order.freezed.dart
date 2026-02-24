// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String? get trackingNumber => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  OrderAddress? get address => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      String status,
      double totalAmount,
      String paymentMethod,
      String paymentStatus,
      String? trackingNumber,
      DateTime createdAt,
      DateTime updatedAt,
      List<OrderItem> items,
      OrderAddress? address});

  $OrderAddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? totalAmount = null,
    Object? paymentMethod = null,
    Object? paymentStatus = null,
    Object? trackingNumber = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? items = null,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as OrderAddress?,
    ) as $Val);
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderAddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $OrderAddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String status,
      double totalAmount,
      String paymentMethod,
      String paymentStatus,
      String? trackingNumber,
      DateTime createdAt,
      DateTime updatedAt,
      List<OrderItem> items,
      OrderAddress? address});

  @override
  $OrderAddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? totalAmount = null,
    Object? paymentMethod = null,
    Object? paymentStatus = null,
    Object? trackingNumber = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? items = null,
    Object? address = freezed,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as OrderAddress?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {required this.id,
      required this.status,
      required this.totalAmount,
      required this.paymentMethod,
      required this.paymentStatus,
      this.trackingNumber,
      required this.createdAt,
      required this.updatedAt,
      required final List<OrderItem> items,
      this.address})
      : _items = items;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final String id;
  @override
  final String status;
  @override
  final double totalAmount;
  @override
  final String paymentMethod;
  @override
  final String paymentStatus;
  @override
  final String? trackingNumber;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<OrderItem> _items;
  @override
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final OrderAddress? address;

  @override
  String toString() {
    return 'Order(id: $id, status: $status, totalAmount: $totalAmount, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, trackingNumber: $trackingNumber, createdAt: $createdAt, updatedAt: $updatedAt, items: $items, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.trackingNumber, trackingNumber) ||
                other.trackingNumber == trackingNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      totalAmount,
      paymentMethod,
      paymentStatus,
      trackingNumber,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_items),
      address);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {required final String id,
      required final String status,
      required final double totalAmount,
      required final String paymentMethod,
      required final String paymentStatus,
      final String? trackingNumber,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final List<OrderItem> items,
      final OrderAddress? address}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  double get totalAmount;
  @override
  String get paymentMethod;
  @override
  String get paymentStatus;
  @override
  String? get trackingNumber;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<OrderItem> get items;
  @override
  OrderAddress? get address;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  String get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  OrderVariant get variant => throw _privateConstructorUsedError;

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call({String id, int quantity, double price, OrderVariant variant});

  $OrderVariantCopyWith<$Res> get variant;
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? price = null,
    Object? variant = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as OrderVariant,
    ) as $Val);
  }

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderVariantCopyWith<$Res> get variant {
    return $OrderVariantCopyWith<$Res>(_value.variant, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int quantity, double price, OrderVariant variant});

  @override
  $OrderVariantCopyWith<$Res> get variant;
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? price = null,
    Object? variant = null,
  }) {
    return _then(_$OrderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as OrderVariant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {required this.id,
      required this.quantity,
      required this.price,
      required this.variant});

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final String id;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final OrderVariant variant;

  @override
  String toString() {
    return 'OrderItem(id: $id, quantity: $quantity, price: $price, variant: $variant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.variant, variant) || other.variant == variant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, price, variant);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final String id,
      required final int quantity,
      required final double price,
      required final OrderVariant variant}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  String get id;
  @override
  int get quantity;
  @override
  double get price;
  @override
  OrderVariant get variant;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderVariant _$OrderVariantFromJson(Map<String, dynamic> json) {
  return _OrderVariant.fromJson(json);
}

/// @nodoc
mixin _$OrderVariant {
  String get id => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get colorHex => throw _privateConstructorUsedError;
  OrderProduct get product => throw _privateConstructorUsedError;

  /// Serializes this OrderVariant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderVariantCopyWith<OrderVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderVariantCopyWith<$Res> {
  factory $OrderVariantCopyWith(
          OrderVariant value, $Res Function(OrderVariant) then) =
      _$OrderVariantCopyWithImpl<$Res, OrderVariant>;
  @useResult
  $Res call(
      {String id,
      String size,
      String color,
      String colorHex,
      OrderProduct product});

  $OrderProductCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderVariantCopyWithImpl<$Res, $Val extends OrderVariant>
    implements $OrderVariantCopyWith<$Res> {
  _$OrderVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? color = null,
    Object? colorHex = null,
    Object? product = null,
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
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as OrderProduct,
    ) as $Val);
  }

  /// Create a copy of OrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderProductCopyWith<$Res> get product {
    return $OrderProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderVariantImplCopyWith<$Res>
    implements $OrderVariantCopyWith<$Res> {
  factory _$$OrderVariantImplCopyWith(
          _$OrderVariantImpl value, $Res Function(_$OrderVariantImpl) then) =
      __$$OrderVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String size,
      String color,
      String colorHex,
      OrderProduct product});

  @override
  $OrderProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$OrderVariantImplCopyWithImpl<$Res>
    extends _$OrderVariantCopyWithImpl<$Res, _$OrderVariantImpl>
    implements _$$OrderVariantImplCopyWith<$Res> {
  __$$OrderVariantImplCopyWithImpl(
      _$OrderVariantImpl _value, $Res Function(_$OrderVariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? color = null,
    Object? colorHex = null,
    Object? product = null,
  }) {
    return _then(_$OrderVariantImpl(
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
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as OrderProduct,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderVariantImpl implements _OrderVariant {
  const _$OrderVariantImpl(
      {required this.id,
      required this.size,
      required this.color,
      required this.colorHex,
      required this.product});

  factory _$OrderVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderVariantImplFromJson(json);

  @override
  final String id;
  @override
  final String size;
  @override
  final String color;
  @override
  final String colorHex;
  @override
  final OrderProduct product;

  @override
  String toString() {
    return 'OrderVariant(id: $id, size: $size, color: $color, colorHex: $colorHex, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderVariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, size, color, colorHex, product);

  /// Create a copy of OrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderVariantImplCopyWith<_$OrderVariantImpl> get copyWith =>
      __$$OrderVariantImplCopyWithImpl<_$OrderVariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderVariantImplToJson(
      this,
    );
  }
}

abstract class _OrderVariant implements OrderVariant {
  const factory _OrderVariant(
      {required final String id,
      required final String size,
      required final String color,
      required final String colorHex,
      required final OrderProduct product}) = _$OrderVariantImpl;

  factory _OrderVariant.fromJson(Map<String, dynamic> json) =
      _$OrderVariantImpl.fromJson;

  @override
  String get id;
  @override
  String get size;
  @override
  String get color;
  @override
  String get colorHex;
  @override
  OrderProduct get product;

  /// Create a copy of OrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderVariantImplCopyWith<_$OrderVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProduct _$OrderProductFromJson(Map<String, dynamic> json) {
  return _OrderProduct.fromJson(json);
}

/// @nodoc
mixin _$OrderProduct {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  List<OrderProductImage>? get images => throw _privateConstructorUsedError;

  /// Serializes this OrderProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderProductCopyWith<OrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductCopyWith<$Res> {
  factory $OrderProductCopyWith(
          OrderProduct value, $Res Function(OrderProduct) then) =
      _$OrderProductCopyWithImpl<$Res, OrderProduct>;
  @useResult
  $Res call({String name, String slug, List<OrderProductImage>? images});
}

/// @nodoc
class _$OrderProductCopyWithImpl<$Res, $Val extends OrderProduct>
    implements $OrderProductCopyWith<$Res> {
  _$OrderProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? images = freezed,
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
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<OrderProductImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderProductImplCopyWith<$Res>
    implements $OrderProductCopyWith<$Res> {
  factory _$$OrderProductImplCopyWith(
          _$OrderProductImpl value, $Res Function(_$OrderProductImpl) then) =
      __$$OrderProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String slug, List<OrderProductImage>? images});
}

/// @nodoc
class __$$OrderProductImplCopyWithImpl<$Res>
    extends _$OrderProductCopyWithImpl<$Res, _$OrderProductImpl>
    implements _$$OrderProductImplCopyWith<$Res> {
  __$$OrderProductImplCopyWithImpl(
      _$OrderProductImpl _value, $Res Function(_$OrderProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? images = freezed,
  }) {
    return _then(_$OrderProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<OrderProductImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductImpl implements _OrderProduct {
  const _$OrderProductImpl(
      {required this.name,
      required this.slug,
      final List<OrderProductImage>? images})
      : _images = images;

  factory _$OrderProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductImplFromJson(json);

  @override
  final String name;
  @override
  final String slug;
  final List<OrderProductImage>? _images;
  @override
  List<OrderProductImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderProduct(name: $name, slug: $slug, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, slug, const DeepCollectionEquality().hash(_images));

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      __$$OrderProductImplCopyWithImpl<_$OrderProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductImplToJson(
      this,
    );
  }
}

abstract class _OrderProduct implements OrderProduct {
  const factory _OrderProduct(
      {required final String name,
      required final String slug,
      final List<OrderProductImage>? images}) = _$OrderProductImpl;

  factory _OrderProduct.fromJson(Map<String, dynamic> json) =
      _$OrderProductImpl.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  List<OrderProductImage>? get images;

  /// Create a copy of OrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderProductImplCopyWith<_$OrderProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderProductImage _$OrderProductImageFromJson(Map<String, dynamic> json) {
  return _OrderProductImage.fromJson(json);
}

/// @nodoc
mixin _$OrderProductImage {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this OrderProductImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderProductImageCopyWith<OrderProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductImageCopyWith<$Res> {
  factory $OrderProductImageCopyWith(
          OrderProductImage value, $Res Function(OrderProductImage) then) =
      _$OrderProductImageCopyWithImpl<$Res, OrderProductImage>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$OrderProductImageCopyWithImpl<$Res, $Val extends OrderProductImage>
    implements $OrderProductImageCopyWith<$Res> {
  _$OrderProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderProductImageImplCopyWith<$Res>
    implements $OrderProductImageCopyWith<$Res> {
  factory _$$OrderProductImageImplCopyWith(_$OrderProductImageImpl value,
          $Res Function(_$OrderProductImageImpl) then) =
      __$$OrderProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$OrderProductImageImplCopyWithImpl<$Res>
    extends _$OrderProductImageCopyWithImpl<$Res, _$OrderProductImageImpl>
    implements _$$OrderProductImageImplCopyWith<$Res> {
  __$$OrderProductImageImplCopyWithImpl(_$OrderProductImageImpl _value,
      $Res Function(_$OrderProductImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$OrderProductImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductImageImpl implements _OrderProductImage {
  const _$OrderProductImageImpl({required this.url});

  factory _$OrderProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'OrderProductImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of OrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductImageImplCopyWith<_$OrderProductImageImpl> get copyWith =>
      __$$OrderProductImageImplCopyWithImpl<_$OrderProductImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductImageImplToJson(
      this,
    );
  }
}

abstract class _OrderProductImage implements OrderProductImage {
  const factory _OrderProductImage({required final String url}) =
      _$OrderProductImageImpl;

  factory _OrderProductImage.fromJson(Map<String, dynamic> json) =
      _$OrderProductImageImpl.fromJson;

  @override
  String get url;

  /// Create a copy of OrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderProductImageImplCopyWith<_$OrderProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderAddress _$OrderAddressFromJson(Map<String, dynamic> json) {
  return _OrderAddress.fromJson(json);
}

/// @nodoc
mixin _$OrderAddress {
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get addressLine1 => throw _privateConstructorUsedError;
  String? get addressLine2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get pincode => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;

  /// Serializes this OrderAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderAddressCopyWith<OrderAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAddressCopyWith<$Res> {
  factory $OrderAddressCopyWith(
          OrderAddress value, $Res Function(OrderAddress) then) =
      _$OrderAddressCopyWithImpl<$Res, OrderAddress>;
  @useResult
  $Res call(
      {String id,
      String fullName,
      String phone,
      String addressLine1,
      String? addressLine2,
      String city,
      String state,
      String pincode,
      bool isDefault});
}

/// @nodoc
class _$OrderAddressCopyWithImpl<$Res, $Val extends OrderAddress>
    implements $OrderAddressCopyWith<$Res> {
  _$OrderAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? addressLine1 = null,
    Object? addressLine2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? pincode = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderAddressImplCopyWith<$Res>
    implements $OrderAddressCopyWith<$Res> {
  factory _$$OrderAddressImplCopyWith(
          _$OrderAddressImpl value, $Res Function(_$OrderAddressImpl) then) =
      __$$OrderAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fullName,
      String phone,
      String addressLine1,
      String? addressLine2,
      String city,
      String state,
      String pincode,
      bool isDefault});
}

/// @nodoc
class __$$OrderAddressImplCopyWithImpl<$Res>
    extends _$OrderAddressCopyWithImpl<$Res, _$OrderAddressImpl>
    implements _$$OrderAddressImplCopyWith<$Res> {
  __$$OrderAddressImplCopyWithImpl(
      _$OrderAddressImpl _value, $Res Function(_$OrderAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? addressLine1 = null,
    Object? addressLine2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? pincode = null,
    Object? isDefault = null,
  }) {
    return _then(_$OrderAddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderAddressImpl implements _OrderAddress {
  const _$OrderAddressImpl(
      {required this.id,
      required this.fullName,
      required this.phone,
      required this.addressLine1,
      this.addressLine2,
      required this.city,
      required this.state,
      required this.pincode,
      this.isDefault = false});

  factory _$OrderAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderAddressImplFromJson(json);

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String phone;
  @override
  final String addressLine1;
  @override
  final String? addressLine2;
  @override
  final String city;
  @override
  final String state;
  @override
  final String pincode;
  @override
  @JsonKey()
  final bool isDefault;

  @override
  String toString() {
    return 'OrderAddress(id: $id, fullName: $fullName, phone: $phone, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, state: $state, pincode: $pincode, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, phone,
      addressLine1, addressLine2, city, state, pincode, isDefault);

  /// Create a copy of OrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderAddressImplCopyWith<_$OrderAddressImpl> get copyWith =>
      __$$OrderAddressImplCopyWithImpl<_$OrderAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderAddressImplToJson(
      this,
    );
  }
}

abstract class _OrderAddress implements OrderAddress {
  const factory _OrderAddress(
      {required final String id,
      required final String fullName,
      required final String phone,
      required final String addressLine1,
      final String? addressLine2,
      required final String city,
      required final String state,
      required final String pincode,
      final bool isDefault}) = _$OrderAddressImpl;

  factory _OrderAddress.fromJson(Map<String, dynamic> json) =
      _$OrderAddressImpl.fromJson;

  @override
  String get id;
  @override
  String get fullName;
  @override
  String get phone;
  @override
  String get addressLine1;
  @override
  String? get addressLine2;
  @override
  String get city;
  @override
  String get state;
  @override
  String get pincode;
  @override
  bool get isDefault;

  /// Create a copy of OrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderAddressImplCopyWith<_$OrderAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderListResponse _$OrderListResponseFromJson(Map<String, dynamic> json) {
  return _OrderListResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderListResponse {
  List<Order> get orders => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;

  /// Serializes this OrderListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderListResponseCopyWith<OrderListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListResponseCopyWith<$Res> {
  factory $OrderListResponseCopyWith(
          OrderListResponse value, $Res Function(OrderListResponse) then) =
      _$OrderListResponseCopyWithImpl<$Res, OrderListResponse>;
  @useResult
  $Res call({List<Order> orders, int total, int page, int pages});
}

/// @nodoc
class _$OrderListResponseCopyWithImpl<$Res, $Val extends OrderListResponse>
    implements $OrderListResponseCopyWith<$Res> {
  _$OrderListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderListResponseImplCopyWith<$Res>
    implements $OrderListResponseCopyWith<$Res> {
  factory _$$OrderListResponseImplCopyWith(_$OrderListResponseImpl value,
          $Res Function(_$OrderListResponseImpl) then) =
      __$$OrderListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Order> orders, int total, int page, int pages});
}

/// @nodoc
class __$$OrderListResponseImplCopyWithImpl<$Res>
    extends _$OrderListResponseCopyWithImpl<$Res, _$OrderListResponseImpl>
    implements _$$OrderListResponseImplCopyWith<$Res> {
  __$$OrderListResponseImplCopyWithImpl(_$OrderListResponseImpl _value,
      $Res Function(_$OrderListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? total = null,
    Object? page = null,
    Object? pages = null,
  }) {
    return _then(_$OrderListResponseImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderListResponseImpl implements _OrderListResponse {
  const _$OrderListResponseImpl(
      {required final List<Order> orders,
      required this.total,
      required this.page,
      required this.pages})
      : _orders = orders;

  factory _$OrderListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderListResponseImplFromJson(json);

  final List<Order> _orders;
  @override
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int pages;

  @override
  String toString() {
    return 'OrderListResponse(orders: $orders, total: $total, page: $page, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListResponseImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orders), total, page, pages);

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListResponseImplCopyWith<_$OrderListResponseImpl> get copyWith =>
      __$$OrderListResponseImplCopyWithImpl<_$OrderListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderListResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderListResponse implements OrderListResponse {
  const factory _OrderListResponse(
      {required final List<Order> orders,
      required final int total,
      required final int page,
      required final int pages}) = _$OrderListResponseImpl;

  factory _OrderListResponse.fromJson(Map<String, dynamic> json) =
      _$OrderListResponseImpl.fromJson;

  @override
  List<Order> get orders;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pages;

  /// Create a copy of OrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderListResponseImplCopyWith<_$OrderListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutResponse _$CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _CheckoutResponse.fromJson(json);
}

/// @nodoc
mixin _$CheckoutResponse {
  String get orderId => throw _privateConstructorUsedError;

  /// Serializes this CheckoutResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutResponseCopyWith<CheckoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutResponseCopyWith<$Res> {
  factory $CheckoutResponseCopyWith(
          CheckoutResponse value, $Res Function(CheckoutResponse) then) =
      _$CheckoutResponseCopyWithImpl<$Res, CheckoutResponse>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$CheckoutResponseCopyWithImpl<$Res, $Val extends CheckoutResponse>
    implements $CheckoutResponseCopyWith<$Res> {
  _$CheckoutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutResponseImplCopyWith<$Res>
    implements $CheckoutResponseCopyWith<$Res> {
  factory _$$CheckoutResponseImplCopyWith(_$CheckoutResponseImpl value,
          $Res Function(_$CheckoutResponseImpl) then) =
      __$$CheckoutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$CheckoutResponseImplCopyWithImpl<$Res>
    extends _$CheckoutResponseCopyWithImpl<$Res, _$CheckoutResponseImpl>
    implements _$$CheckoutResponseImplCopyWith<$Res> {
  __$$CheckoutResponseImplCopyWithImpl(_$CheckoutResponseImpl _value,
      $Res Function(_$CheckoutResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CheckoutResponseImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutResponseImpl implements _CheckoutResponse {
  const _$CheckoutResponseImpl({required this.orderId});

  factory _$CheckoutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutResponseImplFromJson(json);

  @override
  final String orderId;

  @override
  String toString() {
    return 'CheckoutResponse(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutResponseImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of CheckoutResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutResponseImplCopyWith<_$CheckoutResponseImpl> get copyWith =>
      __$$CheckoutResponseImplCopyWithImpl<_$CheckoutResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutResponseImplToJson(
      this,
    );
  }
}

abstract class _CheckoutResponse implements CheckoutResponse {
  const factory _CheckoutResponse({required final String orderId}) =
      _$CheckoutResponseImpl;

  factory _CheckoutResponse.fromJson(Map<String, dynamic> json) =
      _$CheckoutResponseImpl.fromJson;

  @override
  String get orderId;

  /// Create a copy of CheckoutResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutResponseImplCopyWith<_$CheckoutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
