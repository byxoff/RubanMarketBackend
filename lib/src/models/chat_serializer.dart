import 'chat_model.dart';

class ChatSerializer {
  Map<String, dynamic> toMap(Chat chat) {
    return {
      'product': chat.product,
      'messages': chat.messages,
      'users': chat.users,
    };
  }

  Chat fromMap(Map<String, dynamic> map) {
    return Chat(
      product: map['product'],
      messages: List<String>.from(map['messages']),
      users: List<String>.from(map['users']),
    );
  }
}
