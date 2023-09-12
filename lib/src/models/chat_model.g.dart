// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Chat extends _Chat {
  Chat({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.product,
    List<String> messages = const [],
    List<String> users = const [],
  })  : messages = List.unmodifiable(messages),
        users = List.unmodifiable(users);

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
  List<String> messages;

  @override
  List<String> users;

  Chat copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? product,
    List<String>? messages,
    List<String>? users,
  }) {
    return Chat(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        product: product ?? this.product,
        messages: messages ?? this.messages,
        users: users ?? this.users);
  }

  @override
  bool operator ==(other) {
    return other is _Chat &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.product == product &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.messages, messages) &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.users, users);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      product,
      messages,
      users,
    ]);
  }

  @override
  String toString() {
    return 'Chat(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, product=$product, messages=$messages, users=$users)';
  }

  Map<String, dynamic> toJson() {
    return ChatSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const ChatSerializer chatSerializer = ChatSerializer();

class ChatEncoder extends Converter<Chat, Map> {
  const ChatEncoder();

  @override
  Map convert(Chat model) => ChatSerializer.toMap(model);
}

class ChatDecoder extends Converter<Map, Chat> {
  const ChatDecoder();

  @override
  Chat convert(Map map) => ChatSerializer.fromMap(map);
}

class ChatSerializer extends Codec<Chat, Map> {
  const ChatSerializer();

  @override
  ChatEncoder get encoder => const ChatEncoder();
  @override
  ChatDecoder get decoder => const ChatDecoder();
  static Chat fromMap(Map map) {
    return Chat(
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
        messages: map['messages'] is Iterable
            ? (map['messages'] as Iterable).cast<String>().toList()
            : [],
        users: map['users'] is Iterable
            ? (map['users'] as Iterable).cast<String>().toList()
            : []);
  }

  static Map<String, dynamic> toMap(_Chat? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'product': model.product,
      'messages': model.messages,
      'users': model.users
    };
  }
}

abstract class ChatFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    product,
    messages,
    users,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String product = 'product';

  static const String messages = 'messages';

  static const String users = 'users';
}
