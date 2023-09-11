// category_model.dart
class Category {
  String name;
  List<String> subcategories;

  Category({
    required this.name,
    required this.subcategories,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'subcategories': subcategories,
    };
  }

  Category.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        subcategories = List<String>.from(map['subcategories']);
}
