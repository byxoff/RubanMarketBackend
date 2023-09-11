// payment_model.dart
class Payment {
  String user;
  String product;
  String type;
  String method;

  Payment({
    required this.user,
    required this.product,
    required this.type,
    required this.method,
  });

  Map<String, dynamic> toMap() {
    return {
      'user': user,
      'product': product,
      'type': type,
      'method': method,
    };
  }

  Payment.fromMap(Map<String, dynamic> map)
      : user = map['user'],
        product = map['product'],
        type = map['type'],
        method = map['method'];
}
