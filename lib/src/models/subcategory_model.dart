// subcategory_model.dart
class Subcategory {
  String name;
  List<String> products;

  Subcategory({
    required this.name,
    required this.products,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'products': products,
    };
  }

  Subcategory.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        products = List<String>.from(map['products']);
}
