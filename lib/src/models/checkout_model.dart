// checkout_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'checkout_model.g.dart';

@serializable
abstract class _Checkout extends Model {
  List<String> get products;
  String get fullName;
  String get phone;
  String get email;
  String get deliveryAddress;
  String get shippingMethod;
  DateTime get deliveryDate;
}
