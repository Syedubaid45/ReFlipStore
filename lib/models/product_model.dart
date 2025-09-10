class Product {
  final String id;
  final String title;
  final String subtitle;
  final String image;
  final String price;
  final String userName;
  final String userAvatar;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    required this.userName,
    required this.userAvatar,
    this.isFavorite = false,
  });
}
