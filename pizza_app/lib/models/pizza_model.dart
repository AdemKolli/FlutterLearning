import 'package:pizza_app/models/product_model.dart';

class Pizza extends Product {
  static int id = 0;
  int? pizzaId;
  // Constructor
  Pizza(super.name, super.description, super.image, super.price) {
    pizzaId = Pizza.id;
    id++;
  }
}