// shop_model.dart
class Shop {
  String name;
  String username;
  String place;
  String email;
  String phone;
  String detailedInformation;
  List<String> products;

  Shop({
    required this.name,
    required this.username,
    required this.place,
    required this.email,
    required this.phone,
    required this.detailedInformation,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'username': username,
      'place': place,
      'email': email,
      'phone': phone,
      'detailedInformation': detailedInformation,
      'products': products,
    };
  }

  Shop.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        username = map['username'],
        place = map['place'],
        email = map['email'],
        phone = map['phone'],
        detailedInformation = map['detailedInformation'],
        products = List<String>.from(map['products']);
}
