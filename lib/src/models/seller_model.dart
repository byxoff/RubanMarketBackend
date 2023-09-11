// seller_model.dart
class Seller {
  String name;
  String username;
  String place;
  String email;
  String phone;
  String gender;
  int transactions;
  DateTime registrationDate;

  Seller({
    required this.name,
    required this.username,
    required this.place,
    required this.email,
    required this.phone,
    required this.gender,
    required this.transactions,
    required this.registrationDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'username': username,
      'place': place,
      'email': email,
      'phone': phone,
      'gender': gender,
      'transactions': transactions,
      'registrationDate': registrationDate.toIso8601String(),
    };
  }

  Seller.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        username = map['username'],
        place = map['place'],
        email = map['email'],
        phone = map['phone'],
        gender = map['gender'],
        transactions = map['transactions'],
        registrationDate = DateTime.parse(map['registrationDate']);
}
