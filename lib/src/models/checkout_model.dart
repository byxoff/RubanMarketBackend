// checkout_model.dart
class Checkout {
  List<String> products;
  String fullName;
  String phone;
  String email;
  String deliveryAddress;
  String shippingMethod;
  DateTime deliveryDate;

  Checkout({
    required this.products,
    required this.fullName,
    required this.phone,
    required this.email,
    required this.deliveryAddress,
    required this.shippingMethod,
    required this.deliveryDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'products': products,
      'fullName': fullName,
      'phone': phone,
      'email': email,
      'deliveryAddress': deliveryAddress,
      'shippingMethod': shippingMethod,
      'deliveryDate': deliveryDate.toIso8601String(),
    };
  }

  Checkout.fromMap(Map<String, dynamic> map)
      : products = List<String>.from(map['products']),
        fullName = map['fullName'],
        phone = map['phone'],
        email = map['email'],
        deliveryAddress = map['deliveryAddress'],
        shippingMethod = map['shippingMethod'],
        deliveryDate = DateTime.parse(map['deliveryDate']);
}
