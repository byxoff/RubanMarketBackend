// auth_model.dart
class Auth {
  String userID;
  String token;

  Auth({
    required this.userID,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'token': token,
    };
  }

  Auth.fromMap(Map<String, dynamic> map)
      : userID = map['userID'],
        token = map['token'];
}

