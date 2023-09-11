// sales_model.dart
class Sales {
  String product;
  DateTime saleDate;
  DateTime deliveryDate;
  String shippingService;
  String customer;
  String tracking;
  bool processing;
  bool sent;

  Sales({
    required this.product,
    required this.saleDate,
    required this.deliveryDate,
    required this.shippingService,
    required this.customer,
    required this.tracking,
    required this.processing,
    required this.sent,
  });

  Map<String, dynamic> toMap() {
    return {
      'product': product,
      'saleDate': saleDate.toIso8601String(),
      'deliveryDate': deliveryDate.toIso8601String(),
      'shippingService': shippingService,
      'customer': customer,
      'tracking': tracking,
      'processing': processing,
      'sent': sent,
    };
  }

  Sales.fromMap(Map<String, dynamic> map)
      : product = map['product'],
        saleDate = DateTime.parse(map['saleDate']),
        deliveryDate = DateTime.parse(map['deliveryDate']),
        shippingService = map['shippingService'],
        customer = map['customer'],
        tracking = map['tracking'],
        processing = map['processing'],
        sent = map['sent'];
}
