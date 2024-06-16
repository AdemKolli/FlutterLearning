abstract class Product {
  late int id;
  String? name;
  String? description;
  String? image;
  double? price;
  bool? isFavorite = false;

  Product(this.name, this.description, this.image, this.price);
}