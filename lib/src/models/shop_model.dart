// shop_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'shop_model.g.dart';

@serializable
abstract class _Shop extends Model {
  String get name;
  String get username;
  String get place;
  String get email;
  String get phone;
  String get detailedInformation;
  List<String> get products;
}

