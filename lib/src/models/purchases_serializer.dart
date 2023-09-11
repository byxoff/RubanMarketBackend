import 'purchases_model.dart';

class PurchasesSerializer {
  Map<String, dynamic> toMap(Purchases purchase) {
    return {
      'product': purchase.product,
      'purchaseDate': purchase.purchaseDate.toIso8601String(),
      'received': purchase.received,
      'sent': purchase.sent,
      'archived': purchase.archived,
    };
  }

  Purchases fromMap(Map<String, dynamic> map) {
    return Purchases(
      product: map['product'],
      purchaseDate: DateTime.parse(map['purchaseDate']),
      received: map['received'],
      sent: map['sent'],
      archived: map['archived'],
    );
  }
}
