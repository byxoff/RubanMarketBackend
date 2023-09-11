import 'sales_model.dart';

class SalesSerializer {
  Map<String, dynamic> toMap(Sales sales) {
    return {
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

  Sales fromMap(Map<String, dynamic> map) {
    return Sales(
      product: map['product'],
      saleDate: DateTime.parse(map['saleDate']),
      deliveryDate: DateTime.parse(map['deliveryDate']),
      shippingService: map['shippingService'],
      customer: map['customer'],
      tracking: map['tracking'],
      processing: map['processing'],
      sent: map['sent'],
    );
  }
}
