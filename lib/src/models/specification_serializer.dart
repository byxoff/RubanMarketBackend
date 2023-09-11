import 'specification_model.dart';

class SpecificationSerializer {
  Map<String, dynamic> toMap(Specification specification) {
    return {
      'color': specification.color,
      'quantity': specification.quantity,
    };
  }

  Specification fromMap(Map<String, dynamic> map) {
    return Specification(
      color: map['color'],
      quantity: map['quantity'],
    );
  }
}
