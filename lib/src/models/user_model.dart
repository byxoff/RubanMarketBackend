// user_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'user_model.g.dart';

@serializable
abstract class _User extends Model {
  String get email;
  String get phone;
  String get password;
  String get userID;
  List<String> get favorites;
  List<String> get cart;
  List<String> get blockedUsers;
  List<String> get purchases;
  List<String> get sales;
  List<String> get chats;
  List<String> get reviews;
  String get company;
}
