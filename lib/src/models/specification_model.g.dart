// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specification_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Specification extends _Specification {
  Specification({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.color,
    required this.quantity,
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
  String color;

  @override
  int quantity;

  Specification copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? color,
    int? quantity,
  }) {
    return Specification(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        color: color ?? this.color,
        quantity: quantity ?? this.quantity);
  }

  @override
  bool operator ==(other) {
    return other is _Specification &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.color == color &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      color,
      quantity,
    ]);
  }

  @override
  String toString() {
    return 'Specification(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, color=$color, quantity=$quantity)';
  }

  Map<String, dynamic> toJson() {
    return SpecificationSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const SpecificationSerializer specificationSerializer =
    SpecificationSerializer();

class SpecificationEncoder extends Converter<Specification, Map> {
  const SpecificationEncoder();

  @override
  Map convert(Specification model) => SpecificationSerializer.toMap(model);
}

class SpecificationDecoder extends Converter<Map, Specification> {
  const SpecificationDecoder();

  @override
  Specification convert(Map map) => SpecificationSerializer.fromMap(map);
}

class SpecificationSerializer extends Codec<Specification, Map> {
  const SpecificationSerializer();

  @override
  SpecificationEncoder get encoder => const SpecificationEncoder();
  @override
  SpecificationDecoder get decoder => const SpecificationDecoder();
  static Specification fromMap(Map map) {
    return Specification(
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
        color: map['color'] as String,
        quantity: map['quantity'] as int);
  }

  static Map<String, dynamic> toMap(_Specification? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'color': model.color,
      'quantity': model.quantity
    };
  }
}

abstract class SpecificationFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    color,
    quantity,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String color = 'color';

  static const String quantity = 'quantity';
}
