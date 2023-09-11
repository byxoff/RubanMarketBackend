// specification_model.dart
class Specification {
  String color;
  int quantity;

  Specification({
    required this.color,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return {
      'color': color,
      'quantity': quantity,
    };
  }

  Specification.fromMap(Map<String, dynamic> map)
      : color = map['color'],
        quantity = map['quantity'];
}
