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
