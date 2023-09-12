// payment_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'payment_model.g.dart';

@serializable
abstract class _Payment extends Model {
  String get user;
  String get product;
  String get type;
  String get method;
}
