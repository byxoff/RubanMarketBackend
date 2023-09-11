import 'shop_model.dart';

class ShopSerializer {
  Map<String, dynamic> toMap(Shop shop) {
    return {
      'name': shop.name,
      'username': shop.username,
      'place': shop.place,
      'email': shop.email,
      'phone': shop.phone,
      'detailedInformation': shop.detailedInformation,
      'products': shop.products,
    };
  }

  Shop fromMap(Map<String, dynamic> map) {
    return Shop(
      name: map['name'],
      username: map['username'],
      place: map['place'],
      email: map['email'],
      phone: map['phone'],
      detailedInformation: map['detailedInformation'],
      products: List<String>.from(map['products']),
    );
  }
}
