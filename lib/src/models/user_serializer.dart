import 'user_model.dart';

class UserSerializer {
  Map<String, dynamic> toMap(User user) {
    return {
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

  User fromMap(Map<String, dynamic> map) {
    return User(
      email: map['email'],
      phone: map['phone'],
      password: map['password'],
      userID: map['userID'],
      favorites: List<String>.from(map['favorites']),
      cart: List<String>.from(map['cart']),
      blockedUsers: List<String>.from(map['blockedUsers']),
      purchases: List<String>.from(map['purchases']),
      sales: List<String>.from(map['sales']),
      chats: List<String>.from(map['chats']),
      reviews: List<String>.from(map['reviews']),
      company: map['company'],
    );
  }
}
