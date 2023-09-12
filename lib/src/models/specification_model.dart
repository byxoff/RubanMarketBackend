// specification_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'specification_model.g.dart';

@serializable
abstract class _Specification extends Model {
  String get color;
  int get quantity;
}
