// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminOrderImpl _$$AdminOrderImplFromJson(Map<String, dynamic> json) =>
    _$AdminOrderImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      paymentMethod: json['paymentMethod'] as String,
      paymentStatus: json['paymentStatus'] as String,
      trackingNumber: json['trackingNumber'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      user: json['user'] == null
          ? null
          : AdminOrderUser.fromJson(json['user'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AdminOrderAddress.fromJson(json['address'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => AdminOrderItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      countData: json['_count'] == null
          ? null
          : AdminOrderCount.fromJson(json['_count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminOrderImplToJson(_$AdminOrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'totalAmount': instance.totalAmount,
      'paymentMethod': instance.paymentMethod,
      'paymentStatus': instance.paymentStatus,
      'trackingNumber': instance.trackingNumber,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'user': instance.user,
      'address': instance.address,
      'items': instance.items,
      '_count': instance.countData,
    };

_$AdminOrderUserImpl _$$AdminOrderUserImplFromJson(Map<String, dynamic> json) =>
    _$AdminOrderUserImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$AdminOrderUserImplToJson(
        _$AdminOrderUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

_$AdminOrderAddressImpl _$$AdminOrderAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminOrderAddressImpl(
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
    );

Map<String, dynamic> _$$AdminOrderAddressImplToJson(
        _$AdminOrderAddressImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phone': instance.phone,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
    };

_$AdminOrderItemImpl _$$AdminOrderItemImplFromJson(Map<String, dynamic> json) =>
    _$AdminOrderItemImpl(
      id: json['id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      variant:
          AdminOrderVariant.fromJson(json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminOrderItemImplToJson(
        _$AdminOrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'variant': instance.variant,
    };

_$AdminOrderVariantImpl _$$AdminOrderVariantImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminOrderVariantImpl(
      size: json['size'] as String,
      color: json['color'] as String,
      product:
          AdminOrderProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminOrderVariantImplToJson(
        _$AdminOrderVariantImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'color': instance.color,
      'product': instance.product,
    };

_$AdminOrderProductImpl _$$AdminOrderProductImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminOrderProductImpl(
      name: json['name'] as String,
      slug: json['slug'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) =>
                  AdminOrderProductImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AdminOrderProductImplToJson(
        _$AdminOrderProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'images': instance.images,
    };

_$AdminOrderProductImageImpl _$$AdminOrderProductImageImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminOrderProductImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$AdminOrderProductImageImplToJson(
        _$AdminOrderProductImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$AdminOrderCountImpl _$$AdminOrderCountImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminOrderCountImpl(
      items: (json['items'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AdminOrderCountImplToJson(
        _$AdminOrderCountImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$AdminOrderListResponseImpl _$$AdminOrderListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminOrderListResponseImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => AdminOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      page: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$$AdminOrderListResponseImplToJson(
        _$AdminOrderListResponseImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'total': instance.total,
      'pages': instance.pages,
      'page': instance.page,
    };
