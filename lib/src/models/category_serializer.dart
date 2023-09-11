import 'category_model.dart';

class CategorySerializer {
  Map<String, dynamic> toMap(Category category) {
    return {
      'name': category.name,
      'subcategories': category.subcategories,
    };
  }

  Category fromMap(Map<String, dynamic> map) {
    return Category(
      name: map['name'],
      subcategories: List<String>.from(map['subcategories']),
    );
  }
}
