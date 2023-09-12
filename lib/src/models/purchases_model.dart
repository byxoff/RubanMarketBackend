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

class PurchasesSerializer {
  Map<String, dynamic> toMap(_Purchases purchases) {
    return {
      'id': purchases.id,
      'product': purchases.product,
      'purchaseDate': purchases.purchaseDate.toIso8601String(),
      'received': purchases.received,
      'sent': purchases.sent,
      'archived': purchases.archived,
    };
  }

  _Purchases fromMap(Map<String, dynamic> map) {
    return _Purchases()
      ..id = map['id'] as String
      ..product = map['product'] as String
      ..purchaseDate = DateTime.parse(map['purchaseDate'] as String)
      ..received = map['received'] as bool
      ..sent = map['sent'] as bool
      ..archived = map['archived'] as bool;
  }
}
