// user_model.dart
class User {
  String email;
  String phone;
  String password;
  String userID;
  List<String> favorites;
  List<String> cart;
  List<String> blockedUsers;
  List<String> purchases;
  List<String> sales;
  List<String> chats;
  List<String> reviews;
  String company;

  User({
    required this.email,
    required this.phone,
    required this.password,
    required this.userID,
    required this.favorites,
    required this.cart,
    required this.blockedUsers,
    required this.purchases,
    required this.sales,
    required this.chats,
    required this.reviews,
    required this.company,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'phone': phone,
      'password': password,
      'userID': userID,
      'favorites': favorites,
      'cart': cart,
      'blockedUsers': blockedUsers,
      'purchases': purchases,
      'sales': sales,
      'chats': chats,
      'reviews': reviews,
      'company': company,
    };
  }

  User.fromMap(Map<String, dynamic> map)
      : email = map['email'],
        phone = map['phone'],
        password = map['password'],
        userID = map['userID'],
        favorites = List<String>.from(map['favorites']),
        cart = List<String>.from(map['cart']),
        blockedUsers = List<String>.from(map['blockedUsers']),
        purchases = List<String>.from(map['purchases']),
        sales = List<String>.from(map['sales']),
        chats = List<String>.from(map['chats']),
        reviews = List<String>.from(map['reviews']),
        company = map['company'];
}
