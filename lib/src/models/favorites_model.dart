// favorites_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'favorites_model.g.dart';

@serializable
abstract class _Favorites extends Model {
  List<String> get products;
}

