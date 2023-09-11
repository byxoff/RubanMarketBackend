import 'checkout_model.dart';

class CheckoutSerializer {
  Map<String, dynamic> toMap(Checkout checkout) {
    return {
      'products': checkout.products,
      'fullName': checkout.fullName,
      'phone': checkout.phone,
      'email': checkout.email,
      'deliveryAddress': checkout.deliveryAddress,
      'shippingMethod': checkout.shippingMethod,
      'deliveryDate': checkout.deliveryDate.toIso8601String(),
    };
  }

  Checkout fromMap(Map<String, dynamic> map) {
    return Checkout(
      products: List<String>.from(map['products']),
      fullName: map['fullName'],
      phone: map['phone'],
      email: map['email'],
      deliveryAddress: map['deliveryAddress'],
      shippingMethod: map['shippingMethod'],
      deliveryDate: DateTime.parse(map['deliveryDate']),
    );
  }
}
