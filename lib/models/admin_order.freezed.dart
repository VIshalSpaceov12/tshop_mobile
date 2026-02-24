// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminOrder _$AdminOrderFromJson(Map<String, dynamic> json) {
  return _AdminOrder.fromJson(json);
}

/// @nodoc
mixin _$AdminOrder {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String? get trackingNumber => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  AdminOrderUser? get user => throw _privateConstructorUsedError;
  AdminOrderAddress? get address => throw _privateConstructorUsedError;
  List<AdminOrderItem> get items => throw _privateConstructorUsedError;
  @JsonKey(name: '_count')
  AdminOrderCount? get countData => throw _privateConstructorUsedError;

  /// Serializes this AdminOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderCopyWith<AdminOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderCopyWith<$Res> {
  factory $AdminOrderCopyWith(
          AdminOrder value, $Res Function(AdminOrder) then) =
      _$AdminOrderCopyWithImpl<$Res, AdminOrder>;
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
      AdminOrderUser? user,
      AdminOrderAddress? address,
      List<AdminOrderItem> items,
      @JsonKey(name: '_count') AdminOrderCount? countData});

  $AdminOrderUserCopyWith<$Res>? get user;
  $AdminOrderAddressCopyWith<$Res>? get address;
  $AdminOrderCountCopyWith<$Res>? get countData;
}

/// @nodoc
class _$AdminOrderCopyWithImpl<$Res, $Val extends AdminOrder>
    implements $AdminOrderCopyWith<$Res> {
  _$AdminOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrder
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
    Object? user = freezed,
    Object? address = freezed,
    Object? items = null,
    Object? countData = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminOrderUser?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AdminOrderAddress?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AdminOrderItem>,
      countData: freezed == countData
          ? _value.countData
          : countData // ignore: cast_nullable_to_non_nullable
              as AdminOrderCount?,
    ) as $Val);
  }

  /// Create a copy of AdminOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminOrderUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AdminOrderUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AdminOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminOrderAddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AdminOrderAddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of AdminOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminOrderCountCopyWith<$Res>? get countData {
    if (_value.countData == null) {
      return null;
    }

    return $AdminOrderCountCopyWith<$Res>(_value.countData!, (value) {
      return _then(_value.copyWith(countData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminOrderImplCopyWith<$Res>
    implements $AdminOrderCopyWith<$Res> {
  factory _$$AdminOrderImplCopyWith(
          _$AdminOrderImpl value, $Res Function(_$AdminOrderImpl) then) =
      __$$AdminOrderImplCopyWithImpl<$Res>;
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
      AdminOrderUser? user,
      AdminOrderAddress? address,
      List<AdminOrderItem> items,
      @JsonKey(name: '_count') AdminOrderCount? countData});

  @override
  $AdminOrderUserCopyWith<$Res>? get user;
  @override
  $AdminOrderAddressCopyWith<$Res>? get address;
  @override
  $AdminOrderCountCopyWith<$Res>? get countData;
}

/// @nodoc
class __$$AdminOrderImplCopyWithImpl<$Res>
    extends _$AdminOrderCopyWithImpl<$Res, _$AdminOrderImpl>
    implements _$$AdminOrderImplCopyWith<$Res> {
  __$$AdminOrderImplCopyWithImpl(
      _$AdminOrderImpl _value, $Res Function(_$AdminOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrder
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
    Object? user = freezed,
    Object? address = freezed,
    Object? items = null,
    Object? countData = freezed,
  }) {
    return _then(_$AdminOrderImpl(
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AdminOrderUser?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AdminOrderAddress?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AdminOrderItem>,
      countData: freezed == countData
          ? _value.countData
          : countData // ignore: cast_nullable_to_non_nullable
              as AdminOrderCount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOrderImpl implements _AdminOrder {
  const _$AdminOrderImpl(
      {required this.id,
      required this.status,
      required this.totalAmount,
      required this.paymentMethod,
      required this.paymentStatus,
      this.trackingNumber,
      required this.createdAt,
      required this.updatedAt,
      this.user,
      this.address,
      final List<AdminOrderItem> items = const [],
      @JsonKey(name: '_count') this.countData})
      : _items = items;

  factory _$AdminOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderImplFromJson(json);

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
  @override
  final AdminOrderUser? user;
  @override
  final AdminOrderAddress? address;
  final List<AdminOrderItem> _items;
  @override
  @JsonKey()
  List<AdminOrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: '_count')
  final AdminOrderCount? countData;

  @override
  String toString() {
    return 'AdminOrder(id: $id, status: $status, totalAmount: $totalAmount, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, trackingNumber: $trackingNumber, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, address: $address, items: $items, countData: $countData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderImpl &&
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
            (identical(other.user, user) || other.user == user) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.countData, countData) ||
                other.countData == countData));
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
      user,
      address,
      const DeepCollectionEquality().hash(_items),
      countData);

  /// Create a copy of AdminOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderImplCopyWith<_$AdminOrderImpl> get copyWith =>
      __$$AdminOrderImplCopyWithImpl<_$AdminOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderImplToJson(
      this,
    );
  }
}

abstract class _AdminOrder implements AdminOrder {
  const factory _AdminOrder(
          {required final String id,
          required final String status,
          required final double totalAmount,
          required final String paymentMethod,
          required final String paymentStatus,
          final String? trackingNumber,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          final AdminOrderUser? user,
          final AdminOrderAddress? address,
          final List<AdminOrderItem> items,
          @JsonKey(name: '_count') final AdminOrderCount? countData}) =
      _$AdminOrderImpl;

  factory _AdminOrder.fromJson(Map<String, dynamic> json) =
      _$AdminOrderImpl.fromJson;

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
  AdminOrderUser? get user;
  @override
  AdminOrderAddress? get address;
  @override
  List<AdminOrderItem> get items;
  @override
  @JsonKey(name: '_count')
  AdminOrderCount? get countData;

  /// Create a copy of AdminOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderImplCopyWith<_$AdminOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminOrderUser _$AdminOrderUserFromJson(Map<String, dynamic> json) {
  return _AdminOrderUser.fromJson(json);
}

/// @nodoc
mixin _$AdminOrderUser {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this AdminOrderUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderUserCopyWith<AdminOrderUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderUserCopyWith<$Res> {
  factory $AdminOrderUserCopyWith(
          AdminOrderUser value, $Res Function(AdminOrderUser) then) =
      _$AdminOrderUserCopyWithImpl<$Res, AdminOrderUser>;
  @useResult
  $Res call({String? name, String? email});
}

/// @nodoc
class _$AdminOrderUserCopyWithImpl<$Res, $Val extends AdminOrderUser>
    implements $AdminOrderUserCopyWith<$Res> {
  _$AdminOrderUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminOrderUserImplCopyWith<$Res>
    implements $AdminOrderUserCopyWith<$Res> {
  factory _$$AdminOrderUserImplCopyWith(_$AdminOrderUserImpl value,
          $Res Function(_$AdminOrderUserImpl) then) =
      __$$AdminOrderUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email});
}

/// @nodoc
class __$$AdminOrderUserImplCopyWithImpl<$Res>
    extends _$AdminOrderUserCopyWithImpl<$Res, _$AdminOrderUserImpl>
    implements _$$AdminOrderUserImplCopyWith<$Res> {
  __$$AdminOrderUserImplCopyWithImpl(
      _$AdminOrderUserImpl _value, $Res Function(_$AdminOrderUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$AdminOrderUserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOrderUserImpl implements _AdminOrderUser {
  const _$AdminOrderUserImpl({this.name, this.email});

  factory _$AdminOrderUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderUserImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'AdminOrderUser(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  /// Create a copy of AdminOrderUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderUserImplCopyWith<_$AdminOrderUserImpl> get copyWith =>
      __$$AdminOrderUserImplCopyWithImpl<_$AdminOrderUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderUserImplToJson(
      this,
    );
  }
}

abstract class _AdminOrderUser implements AdminOrderUser {
  const factory _AdminOrderUser({final String? name, final String? email}) =
      _$AdminOrderUserImpl;

  factory _AdminOrderUser.fromJson(Map<String, dynamic> json) =
      _$AdminOrderUserImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;

  /// Create a copy of AdminOrderUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderUserImplCopyWith<_$AdminOrderUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminOrderAddress _$AdminOrderAddressFromJson(Map<String, dynamic> json) {
  return _AdminOrderAddress.fromJson(json);
}

/// @nodoc
mixin _$AdminOrderAddress {
  String? get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get addressLine1 => throw _privateConstructorUsedError;
  String? get addressLine2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pincode => throw _privateConstructorUsedError;

  /// Serializes this AdminOrderAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderAddressCopyWith<AdminOrderAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderAddressCopyWith<$Res> {
  factory $AdminOrderAddressCopyWith(
          AdminOrderAddress value, $Res Function(AdminOrderAddress) then) =
      _$AdminOrderAddressCopyWithImpl<$Res, AdminOrderAddress>;
  @useResult
  $Res call(
      {String? fullName,
      String? phone,
      String? addressLine1,
      String? addressLine2,
      String? city,
      String? state,
      String? pincode});
}

/// @nodoc
class _$AdminOrderAddressCopyWithImpl<$Res, $Val extends AdminOrderAddress>
    implements $AdminOrderAddressCopyWith<$Res> {
  _$AdminOrderAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminOrderAddressImplCopyWith<$Res>
    implements $AdminOrderAddressCopyWith<$Res> {
  factory _$$AdminOrderAddressImplCopyWith(_$AdminOrderAddressImpl value,
          $Res Function(_$AdminOrderAddressImpl) then) =
      __$$AdminOrderAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? phone,
      String? addressLine1,
      String? addressLine2,
      String? city,
      String? state,
      String? pincode});
}

/// @nodoc
class __$$AdminOrderAddressImplCopyWithImpl<$Res>
    extends _$AdminOrderAddressCopyWithImpl<$Res, _$AdminOrderAddressImpl>
    implements _$$AdminOrderAddressImplCopyWith<$Res> {
  __$$AdminOrderAddressImplCopyWithImpl(_$AdminOrderAddressImpl _value,
      $Res Function(_$AdminOrderAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_$AdminOrderAddressImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOrderAddressImpl implements _AdminOrderAddress {
  const _$AdminOrderAddressImpl(
      {this.fullName,
      this.phone,
      this.addressLine1,
      this.addressLine2,
      this.city,
      this.state,
      this.pincode});

  factory _$AdminOrderAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderAddressImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final String? addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? pincode;

  @override
  String toString() {
    return 'AdminOrderAddress(fullName: $fullName, phone: $phone, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, state: $state, pincode: $pincode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderAddressImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phone, addressLine1,
      addressLine2, city, state, pincode);

  /// Create a copy of AdminOrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderAddressImplCopyWith<_$AdminOrderAddressImpl> get copyWith =>
      __$$AdminOrderAddressImplCopyWithImpl<_$AdminOrderAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderAddressImplToJson(
      this,
    );
  }
}

abstract class _AdminOrderAddress implements AdminOrderAddress {
  const factory _AdminOrderAddress(
      {final String? fullName,
      final String? phone,
      final String? addressLine1,
      final String? addressLine2,
      final String? city,
      final String? state,
      final String? pincode}) = _$AdminOrderAddressImpl;

  factory _AdminOrderAddress.fromJson(Map<String, dynamic> json) =
      _$AdminOrderAddressImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get phone;
  @override
  String? get addressLine1;
  @override
  String? get addressLine2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get pincode;

  /// Create a copy of AdminOrderAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderAddressImplCopyWith<_$AdminOrderAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminOrderItem _$AdminOrderItemFromJson(Map<String, dynamic> json) {
  return _AdminOrderItem.fromJson(json);
}

/// @nodoc
mixin _$AdminOrderItem {
  String get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  AdminOrderVariant get variant => throw _privateConstructorUsedError;

  /// Serializes this AdminOrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderItemCopyWith<AdminOrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderItemCopyWith<$Res> {
  factory $AdminOrderItemCopyWith(
          AdminOrderItem value, $Res Function(AdminOrderItem) then) =
      _$AdminOrderItemCopyWithImpl<$Res, AdminOrderItem>;
  @useResult
  $Res call({String id, int quantity, double price, AdminOrderVariant variant});

  $AdminOrderVariantCopyWith<$Res> get variant;
}

/// @nodoc
class _$AdminOrderItemCopyWithImpl<$Res, $Val extends AdminOrderItem>
    implements $AdminOrderItemCopyWith<$Res> {
  _$AdminOrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderItem
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
              as AdminOrderVariant,
    ) as $Val);
  }

  /// Create a copy of AdminOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminOrderVariantCopyWith<$Res> get variant {
    return $AdminOrderVariantCopyWith<$Res>(_value.variant, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminOrderItemImplCopyWith<$Res>
    implements $AdminOrderItemCopyWith<$Res> {
  factory _$$AdminOrderItemImplCopyWith(_$AdminOrderItemImpl value,
          $Res Function(_$AdminOrderItemImpl) then) =
      __$$AdminOrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int quantity, double price, AdminOrderVariant variant});

  @override
  $AdminOrderVariantCopyWith<$Res> get variant;
}

/// @nodoc
class __$$AdminOrderItemImplCopyWithImpl<$Res>
    extends _$AdminOrderItemCopyWithImpl<$Res, _$AdminOrderItemImpl>
    implements _$$AdminOrderItemImplCopyWith<$Res> {
  __$$AdminOrderItemImplCopyWithImpl(
      _$AdminOrderItemImpl _value, $Res Function(_$AdminOrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? price = null,
    Object? variant = null,
  }) {
    return _then(_$AdminOrderItemImpl(
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
              as AdminOrderVariant,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOrderItemImpl implements _AdminOrderItem {
  const _$AdminOrderItemImpl(
      {required this.id,
      required this.quantity,
      required this.price,
      required this.variant});

  factory _$AdminOrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderItemImplFromJson(json);

  @override
  final String id;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final AdminOrderVariant variant;

  @override
  String toString() {
    return 'AdminOrderItem(id: $id, quantity: $quantity, price: $price, variant: $variant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.variant, variant) || other.variant == variant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, price, variant);

  /// Create a copy of AdminOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderItemImplCopyWith<_$AdminOrderItemImpl> get copyWith =>
      __$$AdminOrderItemImplCopyWithImpl<_$AdminOrderItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderItemImplToJson(
      this,
    );
  }
}

abstract class _AdminOrderItem implements AdminOrderItem {
  const factory _AdminOrderItem(
      {required final String id,
      required final int quantity,
      required final double price,
      required final AdminOrderVariant variant}) = _$AdminOrderItemImpl;

  factory _AdminOrderItem.fromJson(Map<String, dynamic> json) =
      _$AdminOrderItemImpl.fromJson;

  @override
  String get id;
  @override
  int get quantity;
  @override
  double get price;
  @override
  AdminOrderVariant get variant;

  /// Create a copy of AdminOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderItemImplCopyWith<_$AdminOrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminOrderVariant _$AdminOrderVariantFromJson(Map<String, dynamic> json) {
  return _AdminOrderVariant.fromJson(json);
}

/// @nodoc
mixin _$AdminOrderVariant {
  String get size => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  AdminOrderProduct get product => throw _privateConstructorUsedError;

  /// Serializes this AdminOrderVariant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderVariantCopyWith<AdminOrderVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderVariantCopyWith<$Res> {
  factory $AdminOrderVariantCopyWith(
          AdminOrderVariant value, $Res Function(AdminOrderVariant) then) =
      _$AdminOrderVariantCopyWithImpl<$Res, AdminOrderVariant>;
  @useResult
  $Res call({String size, String color, AdminOrderProduct product});

  $AdminOrderProductCopyWith<$Res> get product;
}

/// @nodoc
class _$AdminOrderVariantCopyWithImpl<$Res, $Val extends AdminOrderVariant>
    implements $AdminOrderVariantCopyWith<$Res> {
  _$AdminOrderVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? color = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AdminOrderProduct,
    ) as $Val);
  }

  /// Create a copy of AdminOrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdminOrderProductCopyWith<$Res> get product {
    return $AdminOrderProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminOrderVariantImplCopyWith<$Res>
    implements $AdminOrderVariantCopyWith<$Res> {
  factory _$$AdminOrderVariantImplCopyWith(_$AdminOrderVariantImpl value,
          $Res Function(_$AdminOrderVariantImpl) then) =
      __$$AdminOrderVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String size, String color, AdminOrderProduct product});

  @override
  $AdminOrderProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$AdminOrderVariantImplCopyWithImpl<$Res>
    extends _$AdminOrderVariantCopyWithImpl<$Res, _$AdminOrderVariantImpl>
    implements _$$AdminOrderVariantImplCopyWith<$Res> {
  __$$AdminOrderVariantImplCopyWithImpl(_$AdminOrderVariantImpl _value,
      $Res Function(_$AdminOrderVariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? color = null,
    Object? product = null,
  }) {
    return _then(_$AdminOrderVariantImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AdminOrderProduct,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOrderVariantImpl implements _AdminOrderVariant {
  const _$AdminOrderVariantImpl(
      {required this.size, required this.color, required this.product});

  factory _$AdminOrderVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderVariantImplFromJson(json);

  @override
  final String size;
  @override
  final String color;
  @override
  final AdminOrderProduct product;

  @override
  String toString() {
    return 'AdminOrderVariant(size: $size, color: $color, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderVariantImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size, color, product);

  /// Create a copy of AdminOrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderVariantImplCopyWith<_$AdminOrderVariantImpl> get copyWith =>
      __$$AdminOrderVariantImplCopyWithImpl<_$AdminOrderVariantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderVariantImplToJson(
      this,
    );
  }
}

abstract class _AdminOrderVariant implements AdminOrderVariant {
  const factory _AdminOrderVariant(
      {required final String size,
      required final String color,
      required final AdminOrderProduct product}) = _$AdminOrderVariantImpl;

  factory _AdminOrderVariant.fromJson(Map<String, dynamic> json) =
      _$AdminOrderVariantImpl.fromJson;

  @override
  String get size;
  @override
  String get color;
  @override
  AdminOrderProduct get product;

  /// Create a copy of AdminOrderVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderVariantImplCopyWith<_$AdminOrderVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminOrderProduct _$AdminOrderProductFromJson(Map<String, dynamic> json) {
  return _AdminOrderProduct.fromJson(json);
}

/// @nodoc
mixin _$AdminOrderProduct {
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  List<AdminOrderProductImage> get images => throw _privateConstructorUsedError;

  /// Serializes this AdminOrderProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderProductCopyWith<AdminOrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderProductCopyWith<$Res> {
  factory $AdminOrderProductCopyWith(
          AdminOrderProduct value, $Res Function(AdminOrderProduct) then) =
      _$AdminOrderProductCopyWithImpl<$Res, AdminOrderProduct>;
  @useResult
  $Res call({String name, String slug, List<AdminOrderProductImage> images});
}

/// @nodoc
class _$AdminOrderProductCopyWithImpl<$Res, $Val extends AdminOrderProduct>
    implements $AdminOrderProductCopyWith<$Res> {
  _$AdminOrderProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? images = null,
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
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AdminOrderProductImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminOrderProductImplCopyWith<$Res>
    implements $AdminOrderProductCopyWith<$Res> {
  factory _$$AdminOrderProductImplCopyWith(_$AdminOrderProductImpl value,
          $Res Function(_$AdminOrderProductImpl) then) =
      __$$AdminOrderProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String slug, List<AdminOrderProductImage> images});
}

/// @nodoc
class __$$AdminOrderProductImplCopyWithImpl<$Res>
    extends _$AdminOrderProductCopyWithImpl<$Res, _$AdminOrderProductImpl>
    implements _$$AdminOrderProductImplCopyWith<$Res> {
  __$$AdminOrderProductImplCopyWithImpl(_$AdminOrderProductImpl _value,
      $Res Function(_$AdminOrderProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? slug = null,
    Object? images = null,
  }) {
    return _then(_$AdminOrderProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AdminOrderProductImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOrderProductImpl implements _AdminOrderProduct {
  const _$AdminOrderProductImpl(
      {required this.name,
      required this.slug,
      final List<AdminOrderProductImage> images = const []})
      : _images = images;

  factory _$AdminOrderProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderProductImplFromJson(json);

  @override
  final String name;
  @override
  final String slug;
  final List<AdminOrderProductImage> _images;
  @override
  @JsonKey()
  List<AdminOrderProductImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'AdminOrderProduct(name: $name, slug: $slug, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, slug, const DeepCollectionEquality().hash(_images));

  /// Create a copy of AdminOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderProductImplCopyWith<_$AdminOrderProductImpl> get copyWith =>
      __$$AdminOrderProductImplCopyWithImpl<_$AdminOrderProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderProductImplToJson(
      this,
    );
  }
}

abstract class _AdminOrderProduct implements AdminOrderProduct {
  const factory _AdminOrderProduct(
      {required final String name,
      required final String slug,
      final List<AdminOrderProductImage> images}) = _$AdminOrderProductImpl;

  factory _AdminOrderProduct.fromJson(Map<String, dynamic> json) =
      _$AdminOrderProductImpl.fromJson;

  @override
  String get name;
  @override
  String get slug;
  @override
  List<AdminOrderProductImage> get images;

  /// Create a copy of AdminOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderProductImplCopyWith<_$AdminOrderProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminOrderProductImage _$AdminOrderProductImageFromJson(
    Map<String, dynamic> json) {
  return _AdminOrderProductImage.fromJson(json);
}

/// @nodoc
mixin _$AdminOrderProductImage {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this AdminOrderProductImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderProductImageCopyWith<AdminOrderProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderProductImageCopyWith<$Res> {
  factory $AdminOrderProductImageCopyWith(AdminOrderProductImage value,
          $Res Function(AdminOrderProductImage) then) =
      _$AdminOrderProductImageCopyWithImpl<$Res, AdminOrderProductImage>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$AdminOrderProductImageCopyWithImpl<$Res,
        $Val extends AdminOrderProductImage>
    implements $AdminOrderProductImageCopyWith<$Res> {
  _$AdminOrderProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderProductImage
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
abstract class _$$AdminOrderProductImageImplCopyWith<$Res>
    implements $AdminOrderProductImageCopyWith<$Res> {
  factory _$$AdminOrderProductImageImplCopyWith(
          _$AdminOrderProductImageImpl value,
          $Res Function(_$AdminOrderProductImageImpl) then) =
      __$$AdminOrderProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$AdminOrderProductImageImplCopyWithImpl<$Res>
    extends _$AdminOrderProductImageCopyWithImpl<$Res,
        _$AdminOrderProductImageImpl>
    implements _$$AdminOrderProductImageImplCopyWith<$Res> {
  __$$AdminOrderProductImageImplCopyWithImpl(
      _$AdminOrderProductImageImpl _value,
      $Res Function(_$AdminOrderProductImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$AdminOrderProductImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOrderProductImageImpl implements _AdminOrderProductImage {
  const _$AdminOrderProductImageImpl({required this.url});

  factory _$AdminOrderProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderProductImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'AdminOrderProductImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderProductImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of AdminOrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderProductImageImplCopyWith<_$AdminOrderProductImageImpl>
      get copyWith => __$$AdminOrderProductImageImplCopyWithImpl<
          _$AdminOrderProductImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderProductImageImplToJson(
      this,
    );
  }
}

abstract class _AdminOrderProductImage implements AdminOrderProductImage {
  const factory _AdminOrderProductImage({required final String url}) =
      _$AdminOrderProductImageImpl;

  factory _AdminOrderProductImage.fromJson(Map<String, dynamic> json) =
      _$AdminOrderProductImageImpl.fromJson;

  @override
  String get url;

  /// Create a copy of AdminOrderProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderProductImageImplCopyWith<_$AdminOrderProductImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdminOrderCount _$AdminOrderCountFromJson(Map<String, dynamic> json) {
  return _AdminOrderCount.fromJson(json);
}

/// @nodoc
mixin _$AdminOrderCount {
  int get items => throw _privateConstructorUsedError;

  /// Serializes this AdminOrderCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderCountCopyWith<AdminOrderCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderCountCopyWith<$Res> {
  factory $AdminOrderCountCopyWith(
          AdminOrderCount value, $Res Function(AdminOrderCount) then) =
      _$AdminOrderCountCopyWithImpl<$Res, AdminOrderCount>;
  @useResult
  $Res call({int items});
}

/// @nodoc
class _$AdminOrderCountCopyWithImpl<$Res, $Val extends AdminOrderCount>
    implements $AdminOrderCountCopyWith<$Res> {
  _$AdminOrderCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderCount
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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminOrderCountImplCopyWith<$Res>
    implements $AdminOrderCountCopyWith<$Res> {
  factory _$$AdminOrderCountImplCopyWith(_$AdminOrderCountImpl value,
          $Res Function(_$AdminOrderCountImpl) then) =
      __$$AdminOrderCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int items});
}

/// @nodoc
class __$$AdminOrderCountImplCopyWithImpl<$Res>
    extends _$AdminOrderCountCopyWithImpl<$Res, _$AdminOrderCountImpl>
    implements _$$AdminOrderCountImplCopyWith<$Res> {
  __$$AdminOrderCountImplCopyWithImpl(
      _$AdminOrderCountImpl _value, $Res Function(_$AdminOrderCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$AdminOrderCountImpl(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOrderCountImpl implements _AdminOrderCount {
  const _$AdminOrderCountImpl({this.items = 0});

  factory _$AdminOrderCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderCountImplFromJson(json);

  @override
  @JsonKey()
  final int items;

  @override
  String toString() {
    return 'AdminOrderCount(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderCountImpl &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, items);

  /// Create a copy of AdminOrderCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderCountImplCopyWith<_$AdminOrderCountImpl> get copyWith =>
      __$$AdminOrderCountImplCopyWithImpl<_$AdminOrderCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderCountImplToJson(
      this,
    );
  }
}

abstract class _AdminOrderCount implements AdminOrderCount {
  const factory _AdminOrderCount({final int items}) = _$AdminOrderCountImpl;

  factory _AdminOrderCount.fromJson(Map<String, dynamic> json) =
      _$AdminOrderCountImpl.fromJson;

  @override
  int get items;

  /// Create a copy of AdminOrderCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderCountImplCopyWith<_$AdminOrderCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdminOrderListResponse _$AdminOrderListResponseFromJson(
    Map<String, dynamic> json) {
  return _AdminOrderListResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminOrderListResponse {
  List<AdminOrder> get orders => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Serializes this AdminOrderListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdminOrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminOrderListResponseCopyWith<AdminOrderListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOrderListResponseCopyWith<$Res> {
  factory $AdminOrderListResponseCopyWith(AdminOrderListResponse value,
          $Res Function(AdminOrderListResponse) then) =
      _$AdminOrderListResponseCopyWithImpl<$Res, AdminOrderListResponse>;
  @useResult
  $Res call({List<AdminOrder> orders, int total, int pages, int page});
}

/// @nodoc
class _$AdminOrderListResponseCopyWithImpl<$Res,
        $Val extends AdminOrderListResponse>
    implements $AdminOrderListResponseCopyWith<$Res> {
  _$AdminOrderListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminOrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? total = null,
    Object? pages = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<AdminOrder>,
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
abstract class _$$AdminOrderListResponseImplCopyWith<$Res>
    implements $AdminOrderListResponseCopyWith<$Res> {
  factory _$$AdminOrderListResponseImplCopyWith(
          _$AdminOrderListResponseImpl value,
          $Res Function(_$AdminOrderListResponseImpl) then) =
      __$$AdminOrderListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AdminOrder> orders, int total, int pages, int page});
}

/// @nodoc
class __$$AdminOrderListResponseImplCopyWithImpl<$Res>
    extends _$AdminOrderListResponseCopyWithImpl<$Res,
        _$AdminOrderListResponseImpl>
    implements _$$AdminOrderListResponseImplCopyWith<$Res> {
  __$$AdminOrderListResponseImplCopyWithImpl(
      _$AdminOrderListResponseImpl _value,
      $Res Function(_$AdminOrderListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminOrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? total = null,
    Object? pages = null,
    Object? page = null,
  }) {
    return _then(_$AdminOrderListResponseImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<AdminOrder>,
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
class _$AdminOrderListResponseImpl implements _AdminOrderListResponse {
  const _$AdminOrderListResponseImpl(
      {required final List<AdminOrder> orders,
      required this.total,
      required this.pages,
      required this.page})
      : _orders = orders;

  factory _$AdminOrderListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOrderListResponseImplFromJson(json);

  final List<AdminOrder> _orders;
  @override
  List<AdminOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int total;
  @override
  final int pages;
  @override
  final int page;

  @override
  String toString() {
    return 'AdminOrderListResponse(orders: $orders, total: $total, pages: $pages, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOrderListResponseImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orders), total, pages, page);

  /// Create a copy of AdminOrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOrderListResponseImplCopyWith<_$AdminOrderListResponseImpl>
      get copyWith => __$$AdminOrderListResponseImplCopyWithImpl<
          _$AdminOrderListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOrderListResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminOrderListResponse implements AdminOrderListResponse {
  const factory _AdminOrderListResponse(
      {required final List<AdminOrder> orders,
      required final int total,
      required final int pages,
      required final int page}) = _$AdminOrderListResponseImpl;

  factory _AdminOrderListResponse.fromJson(Map<String, dynamic> json) =
      _$AdminOrderListResponseImpl.fromJson;

  @override
  List<AdminOrder> get orders;
  @override
  int get total;
  @override
  int get pages;
  @override
  int get page;

  /// Create a copy of AdminOrderListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminOrderListResponseImplCopyWith<_$AdminOrderListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
