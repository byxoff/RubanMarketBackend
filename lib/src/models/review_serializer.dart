import 'review_model.dart';

class ReviewSerializer {
  Map<String, dynamic> toMap(Review review) {
    return {
      'user': review.user,
      'product': review.product,
      'rating': review.rating,
      'text': review.text,
      'images': review.images,
    };
  }

  Review fromMap(Map<String, dynamic> map) {
    return Review(
      user: map['user'],
      product: map['product'],
      rating: map['rating'],
      text: map['text'],
      images: List<String>.from(map['images']),
    );
  }
}
