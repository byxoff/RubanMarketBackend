import 'cart_model.dart';

class CartSerializer {
  Map<String, dynamic> toMap(Cart cart) {
    return {
      'products': cart.products,
    };
  }

  Cart fromMap(Map<String, dynamic> map) {
    return Cart(
      products: List<String>.from(map['products']),
    );
  }
}
