// sales_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'sales_model.g.dart';

@serializable
abstract class _Sales extends Model {
  String get product;
  DateTime get saleDate;
  DateTime get deliveryDate;
  String get shippingService;
  String get customer;
  String get tracking;
  bool get processing;
  bool get sent;
}
