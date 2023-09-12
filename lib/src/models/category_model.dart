// category_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'category_model.g.dart';

@serializable
abstract class _Category extends Model {
  String get name;
  List<String> get subcategories;
}
