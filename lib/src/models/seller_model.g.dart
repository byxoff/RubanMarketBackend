// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Seller extends _Seller {
  Seller({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
    required this.username,
    required this.place,
    required this.email,
    required this.phone,
    required this.gender,
    required this.transactions,
    required this.registrationDate,
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
  String gender;

  @override
  int transactions;

  @override
  DateTime registrationDate;

  Seller copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? username,
    String? place,
    String? email,
    String? phone,
    String? gender,
    int? transactions,
    DateTime? registrationDate,
  }) {
    return Seller(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        name: name ?? this.name,
        username: username ?? this.username,
        place: place ?? this.place,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        gender: gender ?? this.gender,
        transactions: transactions ?? this.transactions,
        registrationDate: registrationDate ?? this.registrationDate);
  }

  @override
  bool operator ==(other) {
    return other is _Seller &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name &&
        other.username == username &&
        other.place == place &&
        other.email == email &&
        other.phone == phone &&
        other.gender == gender &&
        other.transactions == transactions &&
        other.registrationDate == registrationDate;
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
      gender,
      transactions,
      registrationDate,
    ]);
  }

  @override
  String toString() {
    return 'Seller(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, username=$username, place=$place, email=$email, phone=$phone, gender=$gender, transactions=$transactions, registrationDate=$registrationDate)';
  }

  Map<String, dynamic> toJson() {
    return SellerSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const SellerSerializer sellerSerializer = SellerSerializer();

class SellerEncoder extends Converter<Seller, Map> {
  const SellerEncoder();

  @override
  Map convert(Seller model) => SellerSerializer.toMap(model);
}

class SellerDecoder extends Converter<Map, Seller> {
  const SellerDecoder();

  @override
  Seller convert(Map map) => SellerSerializer.fromMap(map);
}

class SellerSerializer extends Codec<Seller, Map> {
  const SellerSerializer();

  @override
  SellerEncoder get encoder => const SellerEncoder();
  @override
  SellerDecoder get decoder => const SellerDecoder();
  static Seller fromMap(Map map) {
    return Seller(
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
        gender: map['gender'] as String,
        transactions: map['transactions'] as int,
        registrationDate: map['registration_date'] != null
            ? (map['registration_date'] is DateTime
                ? (map['registration_date'] as DateTime)
                : DateTime.parse(map['registration_date'].toString()))
            : DateTime.parse("1970-01-01 00:00:00"));
  }

  static Map<String, dynamic> toMap(_Seller? model) {
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
      'gender': model.gender,
      'transactions': model.transactions,
      'registration_date': model.registrationDate.toIso8601String()
    };
  }
}

abstract class SellerFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    name,
    username,
    place,
    email,
    phone,
    gender,
    transactions,
    registrationDate,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String name = 'name';

  static const String username = 'username';

  static const String place = 'place';

  static const String email = 'email';

  static const String phone = 'phone';

  static const String gender = 'gender';

  static const String transactions = 'transactions';

  static const String registrationDate = 'registration_date';
}
