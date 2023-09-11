import 'seller_model.dart';

class SellerSerializer {
  Map<String, dynamic> toMap(Seller seller) {
    return {
      'name': seller.name,
      'username': seller.username,
      'place': seller.place,
      'email': seller.email,
      'phone': seller.phone,
      'gender': seller.gender,
      'transactions': seller.transactions,
      'registrationDate': seller.registrationDate.toIso8601String(),
    };
  }

  Seller fromMap(Map<String, dynamic> map) {
    return Seller(
      name: map['name'],
      username: map['username'],
      place: map['place'],
      email: map['email'],
      phone: map['phone'],
      gender: map['gender'],
      transactions: map['transactions'],
      registrationDate: DateTime.parse(map['registrationDate']),
    );
  }
}
