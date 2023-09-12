// favorites_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'favorites_model.g.dart';

@serializable
abstract class _Favorites extends Model {
  List<String> get products;
}

class FavoritesSerializer {
  Map<String, dynamic> toMap(_Favorites favorites) {
    return {
      'id': favorites.id,
      'products': favorites.products,
    };
  }

  _Favorites fromMap(Map<String, dynamic> map) {
    return _Favorites()
      ..id = map['id'] as String
      ..products = List<String>.from(map['products'] as List);
  }
}
