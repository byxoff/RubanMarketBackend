import 'company_model.dart';

class CompanySerializer {
  Map<String, dynamic> toMap(Company company) {
    return {
      'name': company.name,
      'website': company.website,
      'phone': company.phone,
      'email': company.email,
      'address': company.address,
      'description': company.description,
    };
  }

  Company fromMap(Map<String, dynamic> map) {
    return Company(
      name: map['name'],
      website: map['website'],
      phone: map['phone'],
      email: map['email'],
      address: map['address'],
      description: map['description'],
    );
  }
}
