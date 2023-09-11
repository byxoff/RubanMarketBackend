// chat_model.dart
class Chat {
  String product;
  List<String> messages;
  List<String> users;

  Chat({
    required this.product,
    required this.messages,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return {
      'product': product,
      'messages': messages,
      'users': users,
    };
  }

  Chat.fromMap(Map<String, dynamic> map)
      : product = map['product'],
        messages = List<String>.from(map['messages']),
        users = List<String>.from(map['users']);
}
