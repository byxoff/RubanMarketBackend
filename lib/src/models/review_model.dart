// review_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'review_model.g.dart';

@serializable
abstract class _Review extends Model {
  String get user;
  String get product;
  int get rating;
  String get text;
  List<String> get images;
}

class ReviewSerializer {
  Map<String, dynamic> toMap(_Review review) {
    return {
      'id': review.id,
      'user': review.user,
      'product': review.product,
      'rating': review.rating,
      'text': review.text,
      'images': review.images,
    };
  }

  _Review fromMap(Map<String, dynamic> map) {
    return _Review()
      ..id = map['id'] as String
      ..user = map['user'] as String
      ..product = map['product
