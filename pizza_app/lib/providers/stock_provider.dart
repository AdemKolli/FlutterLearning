import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza_model.dart';

class StockProvider with ChangeNotifier{
  Set<Pizza> pizzas = {
    Pizza('Pepperoni Pizza - L', 'description',
        'assets/images/9-pizza-png-image.png', 10.99),
    Pizza('Cheese Pizza - L', 'description',
        'assets/images/R (9).png', 10.99),
    Pizza('Vegetarian Pizza - L', 'description',
        'assets/images/R (10).png', 10.99)
  };

  Set<Pizza> favoritePizzas = {};

  Map<int,int> cart = {};

  void addToCart(int pizzaId) {
    if (!cart.containsKey(pizzaId)) {
      cart[pizzaId] = 1;
    } else {
      cart[pizzaId] = (cart[pizzaId]! + 1);
    }
    notifyListeners();
  }
  

  void toggleFavorite(int pizzaId) {
    if (favoritePizzas.contains(pizzas.firstWhere((element) => element.pizzaId == pizzaId))) {
      pizzas.firstWhere((element) => element.pizzaId == pizzaId).isFavorite = false;
      favoritePizzas.remove(pizzas.firstWhere((element) => element.pizzaId == pizzaId));
    } else {
      pizzas.firstWhere((element) => element.pizzaId == pizzaId).isFavorite = true;
      favoritePizzas.add(pizzas.firstWhere((element) => element.pizzaId == pizzaId));
    }
    notifyListeners();
  }
  
}