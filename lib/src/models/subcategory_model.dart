// subcategory_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'subcategory_model.g.dart';

@serializable
abstract class _Subcategory extends Model {
  String get name;
  List<String> get products;
}
