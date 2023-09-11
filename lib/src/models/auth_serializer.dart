import 'auth_model.dart';

class AuthSerializer {
  Map<String, dynamic> toMap(Auth auth) {
    return {
      'userID': auth.userID,
      'token': auth.token,
    };
  }

  Auth fromMap(Map<String, dynamic> map) {
    return Auth(
      userID: map['userID'],
      token: map['token'],
    );
  }
}