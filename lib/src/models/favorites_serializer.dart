import 'favorites_model.dart';

class FavoritesSerializer {
  Map<String, dynamic> toMap(Favorites favorites) {
    return {
      'products': favorites.products,
    };
  }

  Favorites fromMap(Map<String, dynamic> map) {
    return Favorites(
      products: List<String>.from(map['products']),
    );
  }
}
