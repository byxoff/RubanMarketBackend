import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'auth_model.g.dart';

@serializable
abstract class _Auth extends Model {
  String get userID;
  String get token;
}
