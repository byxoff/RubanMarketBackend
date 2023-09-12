// company_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'company_model.g.dart';

@serializable
abstract class _Company extends Model {
  String get name;
  String get website;
  String get phone;
  String get email;
  String get address;
  String get description;
}
