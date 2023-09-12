// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchases_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Purchases extends _Purchases {
  Purchases({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.product,
    required this.purchaseDate,
    required this.received,
    required this.sent,
    required this.archived,
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
  DateTime purchaseDate;

  @override
  bool received;

  @override
  bool sent;

  @override
  bool archived;

  Purchases copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? product,
    DateTime? purchaseDate,
    bool? received,
    bool? sent,
    bool? archived,
  }) {
    return Purchases(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        product: product ?? this.product,
        purchaseDate: purchaseDate ?? this.purchaseDate,
        received: received ?? this.received,
        sent: sent ?? this.sent,
        archived: archived ?? this.archived);
  }

  @override
  bool operator ==(other) {
    return other is _Purchases &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.product == product &&
        other.purchaseDate == purchaseDate &&
        other.received == received &&
        other.sent == sent &&
        other.archived == archived;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      product,
      purchaseDate,
      received,
      sent,
      archived,
    ]);
  }

  @override
  String toString() {
    return 'Purchases(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, product=$product, purchaseDate=$purchaseDate, received=$received, sent=$sent, archived=$archived)';
  }

  Map<String, dynamic> toJson() {
    return PurchasesSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const PurchasesSerializer purchasesSerializer = PurchasesSerializer();

class PurchasesEncoder extends Converter<Purchases, Map> {
  const PurchasesEncoder();

  @override
  Map convert(Purchases model) => PurchasesSerializer.toMap(model);
}

class PurchasesDecoder extends Converter<Map, Purchases> {
  const PurchasesDecoder();

  @override
  Purchases convert(Map map) => PurchasesSerializer.fromMap(map);
}

class PurchasesSerializer extends Codec<Purchases, Map> {
  const PurchasesSerializer();

  @override
  PurchasesEncoder get encoder => const PurchasesEncoder();
  @override
  PurchasesDecoder get decoder => const PurchasesDecoder();
  static Purchases fromMap(Map map) {
    return Purchases(
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
        purchaseDate: map['purchase_date'] != null
            ? (map['purchase_date'] is DateTime
                ? (map['purchase_date'] as DateTime)
                : DateTime.parse(map['purchase_date'].toString()))
            : DateTime.parse("1970-01-01 00:00:00"),
        received: map['received'] as bool,
        sent: map['sent'] as bool,
        archived: map['archived'] as bool);
  }

  static Map<String, dynamic> toMap(_Purchases? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'product': model.product,
      'purchase_date': model.purchaseDate.toIso8601String(),
      'received': model.received,
      'sent': model.sent,
      'archived': model.archived
    };
  }
}

abstract class PurchasesFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    product,
    purchaseDate,
    received,
    sent,
    archived,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String product = 'product';

  static const String purchaseDate = 'purchase_date';

  static const String received = 'received';

  static const String sent = 'sent';

  static const String archived = 'archived';
}
