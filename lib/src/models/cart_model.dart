// cart_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'cart_model.g.dart';

@serializable
abstract class _Cart extends Model {
  List<String> get products;
}
