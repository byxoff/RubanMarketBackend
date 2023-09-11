import 'product_model.dart';

class ProductSerializer {
  Map<String, dynamic> toMap(Product product) {
    return {
      'title': product.title,
      'price': product.price,
      'discountPrice': product.discountPrice,
      'city': product.city,
      'isFavorite': product.isFavorite,
      'category': product.category,
      'subcategory': product.subcategory,
      'specifications': product.specifications,
      'shop': product.shop,
      'reviews': product.reviews,
    };
  }

  Product fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'],
      price: map['price'],
      discountPrice: map['discountPrice'],
      city: map['city'],
      isFavorite: map['isFavorite'],
      category: map['category'],
      subcategory: map['subcategory'],
      specifications: map['specifications'],
      shop: map['shop'],
      reviews: List<String>.from(map['reviews']),
    );
  }
}
