// product_model.dart
class Product {
  String title;
  double price;
  double discountPrice;
  String city;
  bool isFavorite;
  String category;
  String subcategory;
  String specifications;
  String shop;
  List<String> reviews;

  Product({
    required this.title,
    required this.price,
    required this.discountPrice,
    required this.city,
    required this.isFavorite,
    required this.category,
    required this.subcategory,
    required this.specifications,
    required this.shop,
    required this.reviews,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'discountPrice': discountPrice,
      'city': city,
      'isFavorite': isFavorite,
      'category': category,
      'subcategory': subcategory,
      'specifications': specifications,
      'shop': shop,
      'reviews': reviews,
    };
  }

  Product.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        price = map['price'],
        discountPrice = map['discountPrice'],
        city = map['city'],
        isFavorite = map['isFavorite'],
        category = map['category'],
        subcategory = map['subcategory'],
        specifications = map['specifications'],
        shop = map['shop'],
        reviews = List<String>.from(map['reviews']);
}
