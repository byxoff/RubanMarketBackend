// cart_model.dart
class Cart {
  List<String> products;

  Cart({
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return {
      'products': products,
    };
  }

  Cart.fromMap(Map<String, dynamic> map)
      : products = List<String>.from(map['products']);
}
