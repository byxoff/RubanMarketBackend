// purchases_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'purchases_model.g.dart';

@serializable
abstract class _Purchases extends Model {
  String get product;
  DateTime get purchaseDate;
  bool get received;
  bool get sent;
  bool get archived;
}

