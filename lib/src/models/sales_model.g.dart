// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Sales extends _Sales {
  Sales({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.product,
    required this.saleDate,
    required this.deliveryDate,
    required this.shippingService,
    required this.customer,
    required this.tracking,
    required this.processing,
    required this.sent,
  });

  /// A unique identifier corresponding to this item.
  @override
  String? id;

  /// The time at which this item was created.
  @override
  DateTime? createdAt;

  /// The last time at which this item was updated.
  @override
  DateTime? updatedAt;

  @override
  String product;

  @override
  DateTime saleDate;

  @override
  DateTime deliveryDate;

  @override
  String shippingService;

  @override
  String customer;

  @override
  String tracking;

  @override
  bool processing;

  @override
  bool sent;

  Sales copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? product,
    DateTime? saleDate,
    DateTime? deliveryDate,
    String? shippingService,
    String? customer,
    String? tracking,
    bool? processing,
    bool? sent,
  }) {
    return Sales(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        product: product ?? this.product,
        saleDate: saleDate ?? this.saleDate,
        deliveryDate: deliveryDate ?? this.deliveryDate,
        shippingService: shippingService ?? this.shippingService,
        customer: customer ?? this.customer,
        tracking: tracking ?? this.tracking,
        processing: processing ?? this.processing,
        sent: sent ?? this.sent);
  }

  @override
  bool operator ==(other) {
    return other is _Sales &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.product == product &&
        other.saleDate == saleDate &&
        other.deliveryDate == deliveryDate &&
        other.shippingService == shippingService &&
        other.customer == customer &&
        other.tracking == tracking &&
        other.processing == processing &&
        other.sent == sent;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      product,
      saleDate,
      deliveryDate,
      shippingService,
      customer,
      tracking,
      processing,
      sent,
    ]);
  }

  @override
  String toString() {
    return 'Sales(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, product=$product, saleDate=$saleDate, deliveryDate=$deliveryDate, shippingService=$shippingService, customer=$customer, tracking=$tracking, processing=$processing, sent=$sent)';
  }

  Map<String, dynamic> toJson() {
    return SalesSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const SalesSerializer salesSerializer = SalesSerializer();

class SalesEncoder extends Converter<Sales, Map> {
  const SalesEncoder();

  @override
  Map convert(Sales model) => SalesSerializer.toMap(model);
}

class SalesDecoder extends Converter<Map, Sales> {
  const SalesDecoder();

  @override
  Sales convert(Map map) => SalesSerializer.fromMap(map);
}

class SalesSerializer extends Codec<Sales, Map> {
  const SalesSerializer();

  @override
  SalesEncoder get encoder => const SalesEncoder();
  @override
  SalesDecoder get decoder => const SalesDecoder();
  static Sales fromMap(Map map) {
    return Sales(
        id: map['id'] as String?,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        updatedAt: map['updated_at'] != null
            ? (map['updated_at'] is DateTime
                ? (map['updated_at'] as DateTime)
                : DateTime.parse(map['updated_at'].toString()))
            : null,
        product: map['product'] as String,
        saleDate: map['sale_date'] != null
            ? (map['sale_date'] is DateTime
                ? (map['sale_date'] as DateTime)
                : DateTime.parse(map['sale_date'].toString()))
            : DateTime.parse("1970-01-01 00:00:00"),
        deliveryDate: map['delivery_date'] != null
            ? (map['delivery_date'] is DateTime
                ? (map['delivery_date'] as DateTime)
                : DateTime.parse(map['delivery_date'].toString()))
            : DateTime.parse("1970-01-01 00:00:00"),
        shippingService: map['shipping_service'] as String,
        customer: map['customer'] as String,
        tracking: map['tracking'] as String,
        processing: map['processing'] as bool,
        sent: map['sent'] as bool);
  }

  static Map<String, dynamic> toMap(_Sales? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'product': model.product,
      'sale_date': model.saleDate.toIso8601String(),
      'delivery_date': model.deliveryDate.toIso8601String(),
      'shipping_service': model.shippingService,
      'customer': model.customer,
      'tracking': model.tracking,
      'processing': model.processing,
      'sent': model.sent
    };
  }
}

abstract class SalesFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    product,
    saleDate,
    deliveryDate,
    shippingService,
    customer,
    tracking,
    processing,
    sent,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String product = 'product';

  static const String saleDate = 'sale_date';

  static const String deliveryDate = 'delivery_date';

  static const String shippingService = 'shipping_service';

  static const String customer = 'customer';

  static const String tracking = 'tracking';

  static const String processing = 'processing';

  static const String sent = 'sent';
}
