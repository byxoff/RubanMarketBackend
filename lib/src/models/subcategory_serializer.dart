import 'subcategory_model.dart';

class SubcategorySerializer {
  Map<String, dynamic> toMap(Subcategory subcategory) {
    return {
      'name': subcategory.name,
      'products': subcategory.products,
    };
  }

  Subcategory fromMap(Map<String, dynamic> map) {
    return Subcategory(
      name: map['name'],
      products: List<String>.from(map['products']),
    );
  }
}
