import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/widgets/home/pizza_item_card.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

class TypesDetails extends StatelessWidget {
  TypesDetails({super.key});

  final pizzas = [
    Pizza(
      name: 'Pepperoni Pizza - L',
      price: 10.99,
      image: 'assets/images/9-pizza-png-image.png'
    ),
    Pizza(
      name: 'Cheese Pizza - L',
      price: 8.99,
      image: 'assets/images/R (9).png'
    ),
    Pizza(
      name: 'Vegetarian Pizza - L',
      price: 11.99,
      image: 'assets/images/R (10).png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * 0.5,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.01),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: PizzaItemCard(
              image: pizzas[index].image!,
              title: pizzas[index].name!,
              price: pizzas[index].price!,
            ),
          );
        },
      ),
    );
  }
}