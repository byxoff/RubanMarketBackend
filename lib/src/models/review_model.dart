// review_model.dart
class Review {
  String user;
  String product;
  int rating;
  String text;
  List<String> images;

  Review({
    required this.user,
    required this.product,
    required this.rating,
    required this.text,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return {
      'user': user,
      'product': product,
      'rating': rating,
      'text': text,
      'images': images,
    };
  }

  Review.fromMap(Map<String, dynamic> map)
      : user = map['user'],
        product = map['product'],
        rating = map['rating'],
        text = map['text'],
        images = List<String>.from(map['images']);
}
