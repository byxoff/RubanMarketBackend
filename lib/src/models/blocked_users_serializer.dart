import 'blocked_users_model.dart';

class BlockedUsersSerializer {
  Map<String, dynamic> toMap(BlockedUsers blockedUsers) {
    return {
      'users': blockedUsers.users,
    };
  }

  BlockedUsers fromMap(Map<String, dynamic> map) {
    return BlockedUsers(
      users: List<String>.from(map['users']),
    );
  }
}
