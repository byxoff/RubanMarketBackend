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

