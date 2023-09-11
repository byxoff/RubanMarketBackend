// favorites_model.dart
class Favorites {
  List<String> products;

  Favorites({
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return {
      'products': products,
    };
  }

  Favorites.fromMap(Map<String, dynamic> map)
      : products = List<String>.from(map['products']);
}
