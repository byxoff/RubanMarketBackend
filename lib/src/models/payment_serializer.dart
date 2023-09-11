import 'payment_model.dart';

class PaymentSerializer {
  Map<String, dynamic> toMap(Payment payment) {
    return {
      'user': payment.user,
      'product': payment.product,
      'type': payment.type,
      'method': payment.method,
    };
  }

  Payment fromMap(Map<String, dynamic> map) {
    return Payment(
      user: map['user'],
      product: map['product'],
      type: map['type'],
      method: map['method'],
    );
  }
}
