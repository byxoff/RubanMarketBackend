// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonModelGenerator
// **************************************************************************

@generatedSerializable
class Review extends _Review {
  Review({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.user,
    required this.product,
    required this.rating,
    required this.text,
    List<String> images = const [],
  }) : images = List.unmodifiable(images);

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
  String user;

  @override
  String product;

  @override
  int rating;

  @override
  String text;

  @override
  List<String> images;

  Review copyWith({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? user,
    String? product,
    int? rating,
    String? text,
    List<String>? images,
  }) {
    return Review(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        user: user ?? this.user,
        product: product ?? this.product,
        rating: rating ?? this.rating,
        text: text ?? this.text,
        images: images ?? this.images);
  }

  @override
  bool operator ==(other) {
    return other is _Review &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.user == user &&
        other.product == product &&
        other.rating == rating &&
        other.text == text &&
        ListEquality<String>(DefaultEquality<String>())
            .equals(other.images, images);
  }

  @override
  int get hashCode {
    return hashObjects([
      id,
      createdAt,
      updatedAt,
      user,
      product,
      rating,
      text,
      images,
    ]);
  }

  @override
  String toString() {
    return 'Review(id=$id, createdAt=$createdAt, updatedAt=$updatedAt, user=$user, product=$product, rating=$rating, text=$text, images=$images)';
  }

  Map<String, dynamic> toJson() {
    return ReviewSerializer.toMap(this);
  }
}

// **************************************************************************
// SerializerGenerator
// **************************************************************************

const ReviewSerializer reviewSerializer = ReviewSerializer();

class ReviewEncoder extends Converter<Review, Map> {
  const ReviewEncoder();

  @override
  Map convert(Review model) => ReviewSerializer.toMap(model);
}

class ReviewDecoder extends Converter<Map, Review> {
  const ReviewDecoder();

  @override
  Review convert(Map map) => ReviewSerializer.fromMap(map);
}

class ReviewSerializer extends Codec<Review, Map> {
  const ReviewSerializer();

  @override
  ReviewEncoder get encoder => const ReviewEncoder();
  @override
  ReviewDecoder get decoder => const ReviewDecoder();
  static Review fromMap(Map map) {
    return Review(
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
        user: map['user'] as String,
        product: map['product'] as String,
        rating: map['rating'] as int,
        text: map['text'] as String,
        images: map['images'] is Iterable
            ? (map['images'] as Iterable).cast<String>().toList()
            : []);
  }

  static Map<String, dynamic> toMap(_Review? model) {
    if (model == null) {
      throw FormatException("Required field [model] cannot be null");
    }
    return {
      'id': model.id,
      'created_at': model.createdAt?.toIso8601String(),
      'updated_at': model.updatedAt?.toIso8601String(),
      'user': model.user,
      'product': model.product,
      'rating': model.rating,
      'text': model.text,
      'images': model.images
    };
  }
}

abstract class ReviewFields {
  static const List<String> allFields = <String>[
    id,
    createdAt,
    updatedAt,
    user,
    product,
    rating,
    text,
    images,
  ];

  static const String id = 'id';

  static const String createdAt = 'created_at';

  static const String updatedAt = 'updated_at';

  static const String user = 'user';

  static const String product = 'product';

  static const String rating = 'rating';

  static const String text = 'text';

  static const String images = 'images';
}
