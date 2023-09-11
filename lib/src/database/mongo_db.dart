import 'package:mongo_dart/mongo_dart.dart' as mongo;

class User {
  String email;
  String phone;
  String password;
  String userID;
  List<String> favorites;
  List<String> cart;
  List<String> blockedUsers;
  List<String> purchases;
  List<String> sales;
  List<String> chats;
  List<String> reviews;
  String company;

  User({
    required this.email,
    required this.phone,
    required this.password,
    required this.userID,
    required this.favorites,
    required this.cart,
    required this.blockedUsers,
    required this.purchases,
    required this.sales,
    required this.chats,
    required this.reviews,
    required this.company,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'phone': phone,
      'password': password,
      'userID': userID,
      'favorites': favorites,
      'cart': cart,
      'blockedUsers': blockedUsers,
      'purchases': purchases,
      'sales': sales,
      'chats': chats,
      'reviews': reviews,
      'company': company,
    };
  }

  User.fromMap(Map<String, dynamic> map)
      : email = map['email'],
        phone = map['phone'],
        password = map['password'],
        userID = map['userID'],
        favorites = List<String>.from(map['favorites']),
        cart = List<String>.from(map['cart']),
        blockedUsers = List<String>.from(map['blockedUsers']),
        purchases = List<String>.from(map['purchases']),
        sales = List<String>.from(map['sales']),
        chats = List<String>.from(map['chats']),
        reviews = List<String>.from(map['reviews']),
        company = map['company'];
}

void main() async {
  final db = mongo.Db('mongodb://localhost:27017/my_database');
  await db.open();

  final userCollection = db.collection('users');
  final productCollection = db.collection('products');
  // Добавьте коллекции для остальных классов, если необходимо

  // Создание новых записей
  final newUser = User(
    email: 'user@example.com',
    phone: '123-456-7890',
    password: 'securepassword',
    userID: '12345',
    favorites: [],
    cart: [],
    blockedUsers: [],
    purchases: [],
    sales: [],
    chats: [],
    reviews: [],
    company: 'MyCompany',
  );
  await userCollection.insert(newUser.toMap());

  // Чтение данных
  final users = await userCollection.find().toList();
  for (final userMap in users) {
    final user = User.fromMap(userMap);
    // Обработка данных пользователя
  }

  // Обновление данных
  await userCollection.update(
    mongo.where.eq('email', 'user@example.com'),
    mongo.modify.set('phone', '987-654-3210'),
  );

  // Удаление данных
  await userCollection.remove(mongo.where.eq('email', 'user@example.com'));

  // Закрытие соединения с БД
  await db.close();
}
