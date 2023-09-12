// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Company extends _Company {
  Company({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
    required this.website,
    required this.phone,
    required this.email,
    required this.address,
    required this.description,
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
  String website;

  @override
  String phone;

  @override
  String email;

  @override
  String address;

  @override
  String description;

  Company copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    String? website,
    String? phone,
    String? email,
    String? address,
    String? description,
  }) {
    return Company(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        name: name ?? this.name,
        website: website ?? this.website,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        address: address ?? this.address,
        description: description ?? this.description);
  }

  @override
  bool operator ==(other) {
    return other is _Company &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name &&
        other.website == website &&
        other.phone == phone &&
        other.email == email &&
        other.address == address &&
        other.description == description;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      name,
      website,
      phone,
      email,
      address,
      description,
    ]);
  }

  @override
  String toString() {
    return 'Company(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, website=$website, phone=$phone, email=$email, address=$address, description=$description)';
  }

  Map<String, dynamic> toJson() {
    return CompanySerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const CompanySerializer companySerializer = CompanySerializer();

class CompanyEncoder extends Converter<Company, Map> {
  const CompanyEncoder();

  @override
  Map convert(Company model) => CompanySerializer.toMap(model);
}

class CompanyDecoder extends Converter<Map, Company> {
  const CompanyDecoder();

  @override
  Company convert(Map map) => CompanySerializer.fromMap(map);
}

class CompanySerializer extends Codec<Company, Map> {
  const CompanySerializer();

  @override
  CompanyEncoder get encoder => const CompanyEncoder();
  @override
  CompanyDecoder get decoder => const CompanyDecoder();
  static Company fromMap(Map map) {
    return Company(
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
        website: map['website'] as String,
        phone: map['phone'] as String,
        email: map['email'] as String,
        address: map['address'] as String,
        description: map['description'] as String);
  }

  static Map<String, dynamic> toMap(_Company? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'name': model.name,
      'website': model.website,
      'phone': model.phone,
      'email': model.email,
      'address': model.address,
      'description': model.description
    };
  }
}

abstract class CompanyFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    name,
    website,
    phone,
    email,
    address,
    description,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String name = 'name';

  static const String website = 'website';

  static const String phone = 'phone';

  static const String email = 'email';

  static const String address = 'address';

  static const String description = 'description';
}
