// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Checkout extends _Checkout {
  Checkout({
    this.id,
    this.createdAt,
    this.updatedAt,
    List<String> products = const [],
    required this.fullName,
    required this.phone,
    required this.email,
    required this.deliveryAddress,
    required this.shippingMethod,
    required this.deliveryDate,
  }) : products = List.unmodifiable(products);

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
  List<String> products;

  @override
  String fullName;

  @override
  String phone;

  @override
  String email;

  @override
  String deliveryAddress;

  @override
  String shippingMethod;

  @override
  DateTime deliveryDate;

  Checkout copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? products,
    String? fullName,
    String? phone,
    String? email,
    String? deliveryAddress,
    String? shippingMethod,
    DateTime? deliveryDate,
  }) {
    return Checkout(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        products: products ?? this.products,
        fullName: fullName ?? this.fullName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        deliveryAddress: deliveryAddress ?? this.deliveryAddress,
        shippingMethod: shippingMethod ?? this.shippingMethod,
        deliveryDate: deliveryDate ?? this.deliveryDate);
  }

  @override
  bool operator ==(other) {
    return other is _Checkout &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.products, products) &&
        other.fullName == fullName &&
        other.phone == phone &&
        other.email == email &&
        other.deliveryAddress == deliveryAddress &&
        other.shippingMethod == shippingMethod &&
        other.deliveryDate == deliveryDate;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      products,
      fullName,
      phone,
      email,
      deliveryAddress,
      shippingMethod,
      deliveryDate,
    ]);
  }

  @override
  String toString() {
    return 'Checkout(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, products=$products, fullName=$fullName, phone=$phone, email=$email, deliveryAddress=$deliveryAddress, shippingMethod=$shippingMethod, deliveryDate=$deliveryDate)';
  }

  Map<String, dynamic> toJson() {
    return CheckoutSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const CheckoutSerializer checkoutSerializer = CheckoutSerializer();

class CheckoutEncoder extends Converter<Checkout, Map> {
  const CheckoutEncoder();

  @override
  Map convert(Checkout model) => CheckoutSerializer.toMap(model);
}

class CheckoutDecoder extends Converter<Map, Checkout> {
  const CheckoutDecoder();

  @override
  Checkout convert(Map map) => CheckoutSerializer.fromMap(map);
}

class CheckoutSerializer extends Codec<Checkout, Map> {
  const CheckoutSerializer();

  @override
  CheckoutEncoder get encoder => const CheckoutEncoder();
  @override
  CheckoutDecoder get decoder => const CheckoutDecoder();
  static Checkout fromMap(Map map) {
    return Checkout(
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
        products: map['products'] is Iterable
            ? (map['products'] as Iterable).cast<String>().toList()
            : [],
        fullName: map['full_name'] as String,
        phone: map['phone'] as String,
        email: map['email'] as String,
        deliveryAddress: map['delivery_address'] as String,
        shippingMethod: map['shipping_method'] as String,
        deliveryDate: map['delivery_date'] != null
            ? (map['delivery_date'] is DateTime
                ? (map['delivery_date'] as DateTime)
                : DateTime.parse(map['delivery_date'].toString()))
            : DateTime.parse("1970-01-01 00:00:00"));
  }

  static Map<String, dynamic> toMap(_Checkout? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'products': model.products,
      'full_name': model.fullName,
      'phone': model.phone,
      'email': model.email,
      'delivery_address': model.deliveryAddress,
      'shipping_method': model.shippingMethod,
      'delivery_date': model.deliveryDate.toIso8601String()
    };
  }
}

abstract class CheckoutFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    products,
    fullName,
    phone,
    email,
    deliveryAddress,
    shippingMethod,
    deliveryDate,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String products = 'products';

  static const String fullName = 'full_name';

  static const String phone = 'phone';

  static const String email = 'email';

  static const String deliveryAddress = 'delivery_address';

  static const String shippingMethod = 'shipping_method';

  static const String deliveryDate = 'delivery_date';
}
