// product_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'product_model.g.dart';

@serializable
abstract class _Product extends Model {
  String get title;
  double get price;
  double get discountPrice;
  String get city;
  bool get isFavorite;
  String get category;
  String get subcategory;
  String get specifications;
  String get shop;
  List<String> get reviews;
}

class ProductSerializer {
  Map<String, dynamic> toMap(_Product product) {
    return {
      'id': product.id,
      'title': product.title,
      'price': product.price,
      'discountPrice': product.discountPrice,
      'city': product.city,
      'isFavorite': product.isFavorite,
      'category': product.category,
      'subcategory': product.subcategory,
      'specifications': product.specifications,
      'shop': product.shop,
      'reviews': product.reviews,
    };
  }

  _Product fromMap(Map<String, dynamic> map) {
    return _Product()
      ..id = map['id'] as String
      ..title = map['title'] as String
      ..price = map['price'] as double
      ..discountPrice = map['discountPrice'] as double
      ..city = map['city'] as String
      ..isFavorite = map['isFavorite'] as bool
      ..category = map['category'] as String
      ..subcategory = map['subcategory'] as String
      ..specifications = map['specifications'] as String
      ..shop = map['shop'] as String
      ..reviews = List<String>.from(map['reviews'] as List);
  }
}
