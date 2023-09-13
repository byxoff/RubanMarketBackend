// blocked_users_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'blocked_users_model.g.dart';

@serializable
abstract class _BlockedUsers extends Model {
  List<String> get users;
}

