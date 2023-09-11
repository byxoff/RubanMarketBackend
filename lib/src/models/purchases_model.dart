// purchases_model.dart
class Purchases {
  String product;
  DateTime purchaseDate;
  bool received;
  bool sent;
  bool archived;

  Purchases({
    required this.product,
    required this.purchaseDate,
    required this.received,
    required this.sent,
    required this.archived,
  });

  Map<String, dynamic> toMap() {
    return {
      'product': product,
      'purchaseDate': purchaseDate.toIso8601String(),
      'received': received,
      'sent': sent,
      'archived': archived,
    };
  }

  Purchases.fromMap(Map<String, dynamic> map)
      : product = map['product'],
        purchaseDate = DateTime.parse(map['purchaseDate']),
        received = map['received'],
        sent = map['sent'],
        archived = map['archived'];
}
