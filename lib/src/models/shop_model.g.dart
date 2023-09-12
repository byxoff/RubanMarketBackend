// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Shop extends _Shop {
  Shop({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
    required this.username,
    required this.place,
    required this.email,
    required this.phone,
    required this.detailedInformation,
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
  String name;

  @override
  String username;

  @override
  String place;

  @override
  String email;

  @override
  String phone;

  @override
  String detailedInformation;

  @override
  List<String> products;

  Shop copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? username,
    String? place,
    String? email,
    String? phone,
    String? detailedInformation,
    List<String>? products,
  }) {
    return Shop(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        name: name ?? this.name,
        username: username ?? this.username,
        place: place ?? this.place,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        detailedInformation: detailedInformation ?? this.detailedInformation,
        products: products ?? this.products);
  }

  @override
  bool operator ==(other) {
    return other is _Shop &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name &&
        other.username == username &&
        other.place == place &&
        other.email == email &&
        other.phone == phone &&
        other.detailedInformation == detailedInformation &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.products, products);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      name,
      username,
      place,
      email,
      phone,
      detailedInformation,
      products,
    ]);
  }

  @override
  String toString() {
    return 'Shop(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, username=$username, place=$place, email=$email, phone=$phone, detailedInformation=$detailedInformation, products=$products)';
  }

  Map<String, dynamic> toJson() {
    return ShopSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const ShopSerializer shopSerializer = ShopSerializer();

class ShopEncoder extends Converter<Shop, Map> {
  const ShopEncoder();

  @override
  Map convert(Shop model) => ShopSerializer.toMap(model);
}

class ShopDecoder extends Converter<Map, Shop> {
  const ShopDecoder();

  @override
  Shop convert(Map map) => ShopSerializer.fromMap(map);
}

class ShopSerializer extends Codec<Shop, Map> {
  const ShopSerializer();

  @override
  ShopEncoder get encoder => const ShopEncoder();
  @override
  ShopDecoder get decoder => const ShopDecoder();
  static Shop fromMap(Map map) {
    return Shop(
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
        name: map['name'] as String,
        username: map['username'] as String,
        place: map['place'] as String,
        email: map['email'] as String,
        phone: map['phone'] as String,
        detailedInformation: map['detailed_information'] as String,
        products: map['products'] is Iterable
            ? (map['products'] as Iterable).cast<String>().toList()
            : []);
  }

  static Map<String, dynamic> toMap(_Shop? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'name': model.name,
      'username': model.username,
      'place': model.place,
      'email': model.email,
      'phone': model.phone,
      'detailed_information': model.detailedInformation,
      'products': model.products
    };
  }
}

abstract class ShopFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    name,
    username,
    place,
    email,
    phone,
    detailedInformation,
    products,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String name = 'name';

  static const String username = 'username';

  static const String place = 'place';

  static const String email = 'email';

  static const String phone = 'phone';

  static const String detailedInformation = 'detailed_information';

  static const String products = 'products';
}
