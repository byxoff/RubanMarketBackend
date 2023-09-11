// blocked_users_model.dart
class BlockedUsers {
  List<String> users;

  BlockedUsers({
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return {
      'users': users,
    };
  }

  BlockedUsers.fromMap(Map<String, dynamic> map)
      : users = List<String>.from(map['users']);
}
