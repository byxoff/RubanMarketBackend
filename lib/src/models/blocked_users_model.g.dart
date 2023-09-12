// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_users_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class BlockedUsers extends _BlockedUsers {
  BlockedUsers({
    this.id,
    this.createdAt,
    this.updatedAt,
    List<String> users = const [],
  }) : users = List.unmodifiable(users);

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
  List<String> users;

  BlockedUsers copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<String>? users,
  }) {
    return BlockedUsers(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        users: users ?? this.users);
  }

  @override
  bool operator ==(other) {
    return other is _BlockedUsers &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.users, users);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      users,
    ]);
  }

  @override
  String toString() {
    return 'BlockedUsers(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, users=$users)';
  }

  Map<String, dynamic> toJson() {
    return BlockedUsersSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const BlockedUsersSerializer blockedUsersSerializer = BlockedUsersSerializer();

class BlockedUsersEncoder extends Converter<BlockedUsers, Map> {
  const BlockedUsersEncoder();

  @override
  Map convert(BlockedUsers model) => BlockedUsersSerializer.toMap(model);
}

class BlockedUsersDecoder extends Converter<Map, BlockedUsers> {
  const BlockedUsersDecoder();

  @override
  BlockedUsers convert(Map map) => BlockedUsersSerializer.fromMap(map);
}

class BlockedUsersSerializer extends Codec<BlockedUsers, Map> {
  const BlockedUsersSerializer();

  @override
  BlockedUsersEncoder get encoder => const BlockedUsersEncoder();
  @override
  BlockedUsersDecoder get decoder => const BlockedUsersDecoder();
  static BlockedUsers fromMap(Map map) {
    return BlockedUsers(
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
        users: map['users'] is Iterable
            ? (map['users'] as Iterable).cast<String>().toList()
            : []);
  }

  static Map<String, dynamic> toMap(_BlockedUsers? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'users': model.users
    };
  }
}

abstract class BlockedUsersFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    users,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String users = 'users';
}
