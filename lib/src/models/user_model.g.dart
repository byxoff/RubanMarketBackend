// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class User extends _User {
  User({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.email,
    required this.phone,
    required this.password,
    required this.userID,
    List<String> favorites = const [],
    List<String> cart = const [],
    List<String> blockedUsers = const [],
    List<String> purchases = const [],
    List<String> sales = const [],
    List<String> chats = const [],
    List<String> reviews = const [],
    required this.company,
  })  : favorites = List.unmodifiable(favorites),
        cart = List.unmodifiable(cart),
        blockedUsers = List.unmodifiable(blockedUsers),
        purchases = List.unmodifiable(purchases),
        sales = List.unmodifiable(sales),
        chats = List.unmodifiable(chats),
        reviews = List.unmodifiable(reviews);

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
  String email;

  @override
  String phone;

  @override
  String password;

  @override
  String userID;

  @override
  List<String> favorites;

  @override
  List<String> cart;

  @override
  List<String> blockedUsers;

  @override
  List<String> purchases;

  @override
  List<String> sales;

  @override
  List<String> chats;

  @override
  List<String> reviews;

  @override
  String company;

  User copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? email,
    String? phone,
    String? password,
    String? userID,
    List<String>? favorites,
    List<String>? cart,
    List<String>? blockedUsers,
    List<String>? purchases,
    List<String>? sales,
    List<String>? chats,
    List<String>? reviews,
    String? company,
  }) {
    return User(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        password: password ?? this.password,
        userID: userID ?? this.userID,
        favorites: favorites ?? this.favorites,
        cart: cart ?? this.cart,
        blockedUsers: blockedUsers ?? this.blockedUsers,
        purchases: purchases ?? this.purchases,
        sales: sales ?? this.sales,
        chats: chats ?? this.chats,
        reviews: reviews ?? this.reviews,
        company: company ?? this.company);
  }

  @override
  bool operator ==(other) {
    return other is _User &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.email == email &&
        other.phone == phone &&
        other.password == password &&
        other.userID == userID &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.favorites, favorites) &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.cart, cart) &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.blockedUsers, blockedUsers) &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.purchases, purchases) &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.sales, sales) &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.chats, chats) &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.reviews, reviews) &&
        other.company == company;
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      email,
      phone,
      password,
      userID,
      favorites,
      cart,
      blockedUsers,
      purchases,
      sales,
      chats,
      reviews,
      company,
    ]);
  }

  @override
  String toString() {
    return 'User(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, email=$email, phone=$phone, password=$password, userID=$userID, favorites=$favorites, cart=$cart, blockedUsers=$blockedUsers, purchases=$purchases, sales=$sales, chats=$chats, reviews=$reviews, company=$company)';
  }

  Map<String, dynamic> toJson() {
    return UserSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const UserSerializer userSerializer = UserSerializer();

class UserEncoder extends Converter<User, Map> {
  const UserEncoder();

  @override
  Map convert(User model) => UserSerializer.toMap(model);
}

class UserDecoder extends Converter<Map, User> {
  const UserDecoder();

  @override
  User convert(Map map) => UserSerializer.fromMap(map);
}

class UserSerializer extends Codec<User, Map> {
  const UserSerializer();

  @override
  UserEncoder get encoder => const UserEncoder();
  @override
  UserDecoder get decoder => const UserDecoder();
  static User fromMap(Map map) {
    return User(
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
        email: map['email'] as String,
        phone: map['phone'] as String,
        password: map['password'] as String,
        userID: map['user_i_d'] as String,
        favorites: map['favorites'] is Iterable
            ? (map['favorites'] as Iterable).cast<String>().toList()
            : [],
        cart: map['cart'] is Iterable
            ? (map['cart'] as Iterable).cast<String>().toList()
            : [],
        blockedUsers: map['blocked_users'] is Iterable
            ? (map['blocked_users'] as Iterable).cast<String>().toList()
            : [],
        purchases: map['purchases'] is Iterable
            ? (map['purchases'] as Iterable).cast<String>().toList()
            : [],
        sales: map['sales'] is Iterable
            ? (map['sales'] as Iterable).cast<String>().toList()
            : [],
        chats: map['chats'] is Iterable
            ? (map['chats'] as Iterable).cast<String>().toList()
            : [],
        reviews: map['reviews'] is Iterable
            ? (map['reviews'] as Iterable).cast<String>().toList()
            : [],
        company: map['company'] as String);
  }

  static Map<String, dynamic> toMap(_User? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'email': model.email,
      'phone': model.phone,
      'password': model.password,
      'user_i_d': model.userID,
      'favorites': model.favorites,
      'cart': model.cart,
      'blocked_users': model.blockedUsers,
      'purchases': model.purchases,
      'sales': model.sales,
      'chats': model.chats,
      'reviews': model.reviews,
      'company': model.company
    };
  }
}

abstract class UserFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    email,
    phone,
    password,
    userID,
    favorites,
    cart,
    blockedUsers,
    purchases,
    sales,
    chats,
    reviews,
    company,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String email = 'email';

  static const String phone = 'phone';

  static const String password = 'password';

  static const String userID = 'user_i_d';

  static const String favorites = 'favorites';

  static const String cart = 'cart';

  static const String blockedUsers = 'blocked_users';

  static const String purchases = 'purchases';

  static const String sales = 'sales';

  static const String chats = 'chats';

  static const String reviews = 'reviews';

  static const String company = 'company';
}
