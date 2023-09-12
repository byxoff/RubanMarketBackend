// user_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'user_model.g.dart';

@serializable
abstract class _User extends Model {
  String get email;
  String get phone;
  String get password;
  String get userID;
  List<String> get favorites;
  List<String> get cart;
  List<String> get blockedUsers;
  List<String> get purchases;
  List<String> get sales;
  List<String> get chats;
  List<String> get reviews;
  String get company;
}

class UserSerializer {
  Map<String, dynamic> toMap(_User user) {
    return {
      'id': user.id,
      'email': user.email,
      'phone': user.phone,
      'password': user.password,
      'userID': user.userID,
      'favorites': user.favorites,
      'cart': user.cart,
      'blockedUsers': user.blockedUsers,
      'purchases': user.purchases,
      'sales': user.sales,
      'chats': user.chats,
      'reviews': user.reviews,
      'company': user.company,
    };
  }

  _User fromMap(Map<String, dynamic> map) {
    return _User()
      ..id = map['id'] as String
      ..email = map['email'] as String
      ..phone = map['phone'] as String
      ..password = map['password'] as String
      ..userID = map['userID'] as String
      ..favorites = List<String>.from(map['favorites'] as List)
      ..cart = List<String>.from(map['cart'] as List)
      ..blockedUsers = List<String>.from(map['blockedUsers'] as List)
      ..purchases = List<String>.from(map['purchases'] as List)
      ..sales = List<String>.from(map['sales'] as List)
      ..chats = List<String>.from(map['chats'] as List)
      ..reviews = List<String>.from(map['reviews'] as List)
      ..company = map['company'] as String;
  }
}
