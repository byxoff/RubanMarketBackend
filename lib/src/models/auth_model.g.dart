// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Auth extends _Auth {
  Auth({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.userID,
    required this.token,
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
  String userID;

  @override
  String token;

  Auth copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? userID,
    String? token,
  }) {
    return Auth(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userID: userID ?? this.userID,
        token: token ?? this.token);
  }

  @override
  bool operator ==(other) {
    return other is _Auth &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.userID == userID &&
        other.token == token;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      userID,
      token,
    ]);
  }

  @override
  String toString() {
    return 'Auth(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, userID=$userID, token=$token)';
  }

  Map<String, dynamic> toJson() {
    return AuthSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const AuthSerializer authSerializer = AuthSerializer();

class AuthEncoder extends Converter<Auth, Map> {
  const AuthEncoder();

  @override
  Map convert(Auth model) => AuthSerializer.toMap(model);
}

class AuthDecoder extends Converter<Map, Auth> {
  const AuthDecoder();

  @override
  Auth convert(Map map) => AuthSerializer.fromMap(map);
}

class AuthSerializer extends Codec<Auth, Map> {
  const AuthSerializer();

  @override
  AuthEncoder get encoder => const AuthEncoder();
  @override
  AuthDecoder get decoder => const AuthDecoder();
  static Auth fromMap(Map map) {
    return Auth(
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
        userID: map['user_i_d'] as String,
        token: map['token'] as String);
  }

  static Map<String, dynamic> toMap(_Auth? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'user_i_d': model.userID,
      'token': model.token
    };
  }
}

abstract class AuthFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    userID,
    token,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String userID = 'user_i_d';

  static const String token = 'token';
}
