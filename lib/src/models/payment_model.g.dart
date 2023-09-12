// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Payment extends _Payment {
  Payment({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.user,
    required this.product,
    required this.type,
    required this.method,
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
  String user;

  @override
  String product;

  @override
  String type;

  @override
  String method;

  Payment copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? user,
    String? product,
    String? type,
    String? method,
  }) {
    return Payment(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        user: user ?? this.user,
        product: product ?? this.product,
        type: type ?? this.type,
        method: method ?? this.method);
  }

  @override
  bool operator ==(other) {
    return other is _Payment &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.user == user &&
        other.product == product &&
        other.type == type &&
        other.method == method;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      user,
      product,
      type,
      method,
    ]);
  }

  @override
  String toString() {
    return 'Payment(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, user=$user, product=$product, type=$type, method=$method)';
  }

  Map<String, dynamic> toJson() {
    return PaymentSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const PaymentSerializer paymentSerializer = PaymentSerializer();

class PaymentEncoder extends Converter<Payment, Map> {
  const PaymentEncoder();

  @override
  Map convert(Payment model) => PaymentSerializer.toMap(model);
}

class PaymentDecoder extends Converter<Map, Payment> {
  const PaymentDecoder();

  @override
  Payment convert(Map map) => PaymentSerializer.fromMap(map);
}

class PaymentSerializer extends Codec<Payment, Map> {
  const PaymentSerializer();

  @override
  PaymentEncoder get encoder => const PaymentEncoder();
  @override
  PaymentDecoder get decoder => const PaymentDecoder();
  static Payment fromMap(Map map) {
    return Payment(
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
        user: map['user'] as String,
        product: map['product'] as String,
        type: map['type'] as String,
        method: map['method'] as String);
  }

  static Map<String, dynamic> toMap(_Payment? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'user': model.user,
      'product': model.product,
      'type': model.type,
      'method': model.method
    };
  }
}

abstract class PaymentFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    user,
    product,
    type,
    method,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String user = 'user';

  static const String product = 'product';

  static const String type = 'type';

  static const String method = 'method';
}
