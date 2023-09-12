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

class SalesSerializer {
  Map<String, dynamic> toMap(_Sales sales) {
    return {
      'id': sales.id,
      'product': sales.product,
      'saleDate': sales.saleDate.toIso8601String(),
      'deliveryDate': sales.deliveryDate.toIso8601String(),
      'shippingService': sales.shippingService,
      'customer': sales.customer,
      'tracking': sales.tracking,
      'processing': sales.processing,
      'sent': sales.sent,
    };
  }

  _Sales fromMap(Map<String, dynamic> map) {
    return _Sales()
      ..id = map['id'] as String
      ..product = map['product'] as String
      ..saleDate = DateTime.parse(map['saleDate'] as String)
      ..deliveryDate = DateTime.parse(map['deliveryDate'] as String)
      ..shippingService = map['shippingService'] as String
      ..customer = map['customer'] as String
      ..tracking = map
