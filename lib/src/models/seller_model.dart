// seller_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'seller_model.g.dart';

@serializable
abstract class _Seller extends Model {
  String get name;
  String get username;
  String get place;
  String get email;
  String get phone;
  String get gender;
  int get transactions;
  DateTime get registrationDate;
}
