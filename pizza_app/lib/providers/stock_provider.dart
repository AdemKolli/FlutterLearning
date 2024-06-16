import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza_model.dart';

class StockProvider with ChangeNotifier{
  List<Pizza> pizzas = [
    Pizza('Pepperoni Pizza - L', 'description',
        'assets/images/9-pizza-png-image.png', 10.99),
    Pizza('Cheese Pizza - L', 'description',
        'assets/images/R (9).png', 10.99),
    Pizza('Pepperoni Pizza - L', 'description',
        'assets/images/R (10).png', 10.99)
  ];

  Set<Pizza> favoritePizzas = {};

  void toggleFavorite(Pizza favorite) {
    if (favoritePizzas.contains(favorite)) {
      !favorite.isFavorite! ? favoritePizzas.add(favorite) : favoritePizzas.remove(favorite) ;
    }
    notifyListeners();
  }
  
}