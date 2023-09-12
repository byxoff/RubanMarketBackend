// blocked_users_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'blocked_users_model.g.dart';

@serializable
abstract class _BlockedUsers extends Model {
  List<String> get users;
}

class BlockedUsersSerializer {
  Map<String, dynamic> toMap(_BlockedUsers blockedUsers) {
    return {
      'id': blockedUsers.id,
      'users': blockedUsers.users,
    };
  }

  _BlockedUsers fromMap(Map<String, dynamic> map) {
    return _BlockedUsers()
      ..id = map['id'] as String
      ..users = List<String>.from(map['users'] as List);
  }
}
