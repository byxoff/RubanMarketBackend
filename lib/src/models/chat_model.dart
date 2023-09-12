// chat_model.dart
import 'package:angel3_model/angel3_model.dart';
import 'package:angel3_serialize/angel3_serialize.dart';
part 'chat_model.g.dart';

@serializable
abstract class _Chat extends Model {
  String get product;
  List<String> get messages;
  List<String> get users;
}

class ChatSerializer {
  Map<String, dynamic> toMap(_Chat chat) {
    return {
      'id': chat.id,
      'product': chat.product,
      'messages': chat.messages,
      'users': chat.users,
    };
  }

  _Chat fromMap(Map<String, dynamic> map) {
    return _Chat()
      ..id = map['id'] as String
      ..product = map['product'] as String
      ..messages = List<String>.from(map['messages'] as List)
      ..users = List<String>.from(map['users'] as List);
  }
}
