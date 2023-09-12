// specification_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'specification_model.g.dart';

@serializable
abstract class _Specification extends Model {
  String get color;
  int get quantity;
}

class SpecificationSerializer {
  Map<String, dynamic> toMap(_Specification specification) {
    return {
      'id': specification.id,
      'color': specification.color,
      'quantity': specification.quantity,
    };
  }

  _Specification fromMap(Map<String, dynamic> map) {
    return _Specification()
      ..id = map['id'] as String
      ..color = map['color'] as String
      ..quantity = map['quantity'] as int;
  }
}
