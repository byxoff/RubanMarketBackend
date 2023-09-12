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

class ShopSerializer {
  Map<String, dynamic> toMap(_Shop shop) {
    return {
      'id': shop.id,
      'name': shop.name,
      'username': shop.username,
      'place': shop.place,
      'email': shop.email,
      'phone': shop.phone,
      'detailedInformation': shop.detailedInformation,
      'products': shop.products,
    };
  }

  _Shop fromMap(Map<String, dynamic> map) {
    return _Shop()
      ..id = map['id'] as String
      ..name = map['name'] as String
      ..username = map['username'] as String
      ..place = map['place'] as String
      ..email = map['email'] as String
      ..phone = map['phone'] as String
      ..detailedInformation = map['detailedInformation'] as String
      ..products = List<String>.from(map['products'] as List);
  }
}
