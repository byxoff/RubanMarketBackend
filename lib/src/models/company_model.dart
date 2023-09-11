// company_model.dart
class Company {
  String name;
  String website;
  String phone;
  String email;
  String address;
  String description;

  Company({
    required this.name,
    required this.website,
    required this.phone,
    required this.email,
    required this.address,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'website': website,
      'phone': phone,
      'email': email,
      'address': address,
      'description': description,
    };
  }

  Company.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        website = map['website'],
        phone = map['phone'],
        email = map['email'],
        address = map['address'],
        description = map['description'];
}
