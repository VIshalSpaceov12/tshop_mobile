// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      paymentMethod: json['paymentMethod'] as String,
      paymentStatus: json['paymentStatus'] as String,
      trackingNumber: json['trackingNumber'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: json['address'] == null
          ? null
          : OrderAddress.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'totalAmount': instance.totalAmount,
      'paymentMethod': instance.paymentMethod,
      'paymentStatus': instance.paymentStatus,
      'trackingNumber': instance.trackingNumber,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'items': instance.items,
      'address': instance.address,
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      id: json['id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      variant: OrderVariant.fromJson(json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'variant': instance.variant,
    };

_$OrderVariantImpl _$$OrderVariantImplFromJson(Map<String, dynamic> json) =>
    _$OrderVariantImpl(
      id: json['id'] as String,
      size: json['size'] as String,
      color: json['color'] as String,
      colorHex: json['colorHex'] as String,
      product: OrderProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderVariantImplToJson(_$OrderVariantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'color': instance.color,
      'colorHex': instance.colorHex,
      'product': instance.product,
    };

_$OrderProductImpl _$$OrderProductImplFromJson(Map<String, dynamic> json) =>
    _$OrderProductImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => OrderProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderProductImplToJson(_$OrderProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'images': instance.images,
    };

_$OrderProductImageImpl _$$OrderProductImageImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderProductImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$OrderProductImageImplToJson(
        _$OrderProductImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$OrderAddressImpl _$$OrderAddressImplFromJson(Map<String, dynamic> json) =>
    _$OrderAddressImpl(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      phone: json['phone'] as String,
      addressLine1: json['addressLine1'] as String,
      addressLine2: json['addressLine2'] as String?,
      city: json['city'] as String,
      state: json['state'] as String,
      pincode: json['pincode'] as String,
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$OrderAddressImplToJson(_$OrderAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'isDefault': instance.isDefault,
    };

_$OrderListResponseImpl _$$OrderListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderListResponseImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
    );

Map<String, dynamic> _$$OrderListResponseImplToJson(
        _$OrderListResponseImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
    };

_$CheckoutResponseImpl _$$CheckoutResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutResponseImpl(
      orderId: json['orderId'] as String,
    );

Map<String, dynamic> _$$CheckoutResponseImplToJson(
        _$CheckoutResponseImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
    };
