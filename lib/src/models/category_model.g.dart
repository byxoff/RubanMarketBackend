// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Category extends _Category {
  Category({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
    List<String> subcategories = const [],
  }) : subcategories = List.unmodifiable(subcategories);

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
  List<String> subcategories;

  Category copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? name,
    List<String>? subcategories,
  }) {
    return Category(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        name: name ?? this.name,
        subcategories: subcategories ?? this.subcategories);
  }

  @override
  bool operator ==(other) {
    return other is _Category &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.subcategories, subcategories);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      name,
      subcategories,
    ]);
  }

  @override
  String toString() {
    return 'Category(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, subcategories=$subcategories)';
  }

  Map<String, dynamic> toJson() {
    return CategorySerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const CategorySerializer categorySerializer = CategorySerializer();

class CategoryEncoder extends Converter<Category, Map> {
  const CategoryEncoder();

  @override
  Map convert(Category model) => CategorySerializer.toMap(model);
}

class CategoryDecoder extends Converter<Map, Category> {
  const CategoryDecoder();

  @override
  Category convert(Map map) => CategorySerializer.fromMap(map);
}

class CategorySerializer extends Codec<Category, Map> {
  const CategorySerializer();

  @override
  CategoryEncoder get encoder => const CategoryEncoder();
  @override
  CategoryDecoder get decoder => const CategoryDecoder();
  static Category fromMap(Map map) {
    return Category(
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
        subcategories: map['subcategories'] is Iterable
            ? (map['subcategories'] as Iterable).cast<String>().toList()
            : []);
  }

  static Map<String, dynamic> toMap(_Category? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'name': model.name,
      'subcategories': model.subcategories
    };
  }
}

abstract class CategoryFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    name,
    subcategories,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String name = 'name';

  static const String subcategories = 'subcategories';
}
