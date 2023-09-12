// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Product extends _Product {
  Product({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.title,
    required this.price,
    required this.discountPrice,
    required this.city,
    required this.isFavorite,
    required this.category,
    required this.subcategory,
    required this.specifications,
    required this.shop,
    List<String> reviews = const [],
  }) : reviews = List.unmodifiable(reviews);

  /// A unique identifier corresponding to this item.
  @override
  String? id;

  /// The time at which this item was created.
  @override
  DateTime? createdAt;

  /// The last time at which this item was updated.
  @override
  DateTime? updatedAt;

  @override
  String title;

  @override
  double price;

  @override
  double discountPrice;

  @override
  String city;

  @override
  bool isFavorite;

  @override
  String category;

  @override
  String subcategory;

  @override
  String specifications;

  @override
  String shop;

  @override
  List<String> reviews;

  Product copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? title,
    double? price,
    double? discountPrice,
    String? city,
    bool? isFavorite,
    String? category,
    String? subcategory,
    String? specifications,
    String? shop,
    List<String>? reviews,
  }) {
    return Product(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        title: title ?? this.title,
        price: price ?? this.price,
        discountPrice: discountPrice ?? this.discountPrice,
        city: city ?? this.city,
        isFavorite: isFavorite ?? this.isFavorite,
        category: category ?? this.category,
        subcategory: subcategory ?? this.subcategory,
        specifications: specifications ?? this.specifications,
        shop: shop ?? this.shop,
        reviews: reviews ?? this.reviews);
  }

  @override
  bool operator ==(other) {
    return other is _Product &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.title == title &&
        other.price == price &&
        other.discountPrice == discountPrice &&
        other.city == city &&
        other.isFavorite == isFavorite &&
        other.category == category &&
        other.subcategory == subcategory &&
        other.specifications == specifications &&
        other.shop == shop &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.reviews, reviews);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      title,
      price,
      discountPrice,
      city,
      isFavorite,
      category,
      subcategory,
      specifications,
      shop,
      reviews,
    ]);
  }

  @override
  String toString() {
    return 'Product(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, title=$title, price=$price, discountPrice=$discountPrice, city=$city, isFavorite=$isFavorite, category=$category, subcategory=$subcategory, specifications=$specifications, shop=$shop, reviews=$reviews)';
  }

  Map<String, dynamic> toJson() {
    return ProductSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const ProductSerializer productSerializer = ProductSerializer();

class ProductEncoder extends Converter<Product, Map> {
  const ProductEncoder();

  @override
  Map convert(Product model) => ProductSerializer.toMap(model);
}

class ProductDecoder extends Converter<Map, Product> {
  const ProductDecoder();

  @override
  Product convert(Map map) => ProductSerializer.fromMap(map);
}

class ProductSerializer extends Codec<Product, Map> {
  const ProductSerializer();

  @override
  ProductEncoder get encoder => const ProductEncoder();
  @override
  ProductDecoder get decoder => const ProductDecoder();
  static Product fromMap(Map map) {
    return Product(
        id: map['id'] as String?,
        createdAt: map['created_at'] != null
            ? (map['created_at'] is DateTime
                ? (map['created_at'] as DateTime)
                : DateTime.parse(map['created_at'].toString()))
            : null,
        updatedAt: map['updated_at'] != null
            ? (map['updated_at'] is DateTime
                ? (map['updated_at'] as DateTime)
                : DateTime.parse(map['updated_at'].toString()))
            : null,
        title: map['title'] as String,
        price: map['price'] as double,
        discountPrice: map['discount_price'] as double,
        city: map['city'] as String,
        isFavorite: map['is_favorite'] as bool,
        category: map['category'] as String,
        subcategory: map['subcategory'] as String,
        specifications: map['specifications'] as String,
        shop: map['shop'] as String,
        reviews: map['reviews'] is Iterable
            ? (map['reviews'] as Iterable).cast<String>().toList()
            : []);
  }

  static Map<String, dynamic> toMap(_Product? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'title': model.title,
      'price': model.price,
      'discount_price': model.discountPrice,
      'city': model.city,
      'is_favorite': model.isFavorite,
      'category': model.category,
      'subcategory': model.subcategory,
      'specifications': model.specifications,
      'shop': model.shop,
      'reviews': model.reviews
    };
  }
}

abstract class ProductFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    title,
    price,
    discountPrice,
    city,
    isFavorite,
    category,
    subcategory,
    specifications,
    shop,
    reviews,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String title = 'title';

  static const String price = 'price';

  static const String discountPrice = 'discount_price';

  static const String city = 'city';

  static const String isFavorite = 'is_favorite';

  static const String category = 'category';

  static const String subcategory = 'subcategory';

  static const String specifications = 'specifications';

  static const String shop = 'shop';

  static const String reviews = 'reviews';
}
