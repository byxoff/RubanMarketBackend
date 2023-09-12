// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Subcategory extends _Subcategory {
  Subcategory({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
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
  List<String> products;

  Subcategory copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    List<String>? products,
  }) {
    return Subcategory(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        name: name ?? this.name,
        products: products ?? this.products);
  }

  @override
  bool operator ==(other) {
    return other is _Subcategory &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name &&
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
      products,
    ]);
  }

  @override
  String toString() {
    return 'Subcategory(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, products=$products)';
  }

  Map<String, dynamic> toJson() {
    return SubcategorySerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const SubcategorySerializer subcategorySerializer = SubcategorySerializer();

class SubcategoryEncoder extends Converter<Subcategory, Map> {
  const SubcategoryEncoder();

  @override
  Map convert(Subcategory model) => SubcategorySerializer.toMap(model);
}

class SubcategoryDecoder extends Converter<Map, Subcategory> {
  const SubcategoryDecoder();

  @override
  Subcategory convert(Map map) => SubcategorySerializer.fromMap(map);
}

class SubcategorySerializer extends Codec<Subcategory, Map> {
  const SubcategorySerializer();

  @override
  SubcategoryEncoder get encoder => const SubcategoryEncoder();
  @override
  SubcategoryDecoder get decoder => const SubcategoryDecoder();
  static Subcategory fromMap(Map map) {
    return Subcategory(
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
        products: map['products'] is Iterable
            ? (map['products'] as Iterable).cast<String>().toList()
            : []);
  }

  static Map<String, dynamic> toMap(_Subcategory? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'name': model.name,
      'products': model.products
    };
  }
}

abstract class SubcategoryFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    name,
    products,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String name = 'name';

  static const String products = 'products';
}
