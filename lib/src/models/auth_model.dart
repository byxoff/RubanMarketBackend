import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'auth_model.g.dart';

@serializable
abstract class _Auth extends Model {
  String get userID;
  String get token;
}

class AuthSerializer {
  Map<String, dynamic> toMap(_Auth auth) {
    return {
      'id': auth.id,
      'userID': auth.userID,
      'token': auth.token,
    };
  }

  _Auth fromMap(Map<String, dynamic> map) {
    return _Auth()
      ..id = map['id'] as String
      ..userID = map['userID'] as String
      ..token = map['token'] as String;
  }
}
