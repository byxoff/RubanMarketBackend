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
