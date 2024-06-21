import 'package:pizza_app/models/product_model.dart';

class Tacos extends Product {
  static int id = 0;
  // Constructor
  Tacos(super.name, super.description, super.image, super.price) {
    id++;
  }
}
