// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Cart extends _Cart {
  Cart({
    this.id,
    this.createdAt,
    this.updatedAt,
    List<String> products = const [],
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

  Cart copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? products,
  }) {
    return Cart(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        products: products ?? this.products);
  }

  @override
  bool operator ==(other) {
    return other is _Cart &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.products, products);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      products,
    ]);
  }

  @override
  String toString() {
    return 'Cart(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, products=$products)';
  }

  Map<String, dynamic> toJson() {
    return CartSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const CartSerializer cartSerializer = CartSerializer();

class CartEncoder extends Converter<Cart, Map> {
  const CartEncoder();

  @override
  Map convert(Cart model) => CartSerializer.toMap(model);
}

class CartDecoder extends Converter<Map, Cart> {
  const CartDecoder();

  @override
  Cart convert(Map map) => CartSerializer.fromMap(map);
}

class CartSerializer extends Codec<Cart, Map> {
  const CartSerializer();

  @override
  CartEncoder get encoder => const CartEncoder();
  @override
  CartDecoder get decoder => const CartDecoder();
  static Cart fromMap(Map map) {
    return Cart(
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
            : []);
  }

  static Map<String, dynamic> toMap(_Cart? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'products': model.products
    };
  }
}

abstract class CartFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    products,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String products = 'products';
}
