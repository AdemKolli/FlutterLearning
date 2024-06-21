import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/widgets/home/pizza_item_card.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:provider/provider.dart';

class TypesDetails extends StatelessWidget {
  const TypesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StockProvider>(
      builder: (context, provider, _) => SizedBox(
        height: ScreenSize.height * 0.5,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.01),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            List<Pizza> list = provider.pizzas.toList();
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: PizzaItemCard(
                itemId: list[index].pizzaId!,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => Expanded(
                      child: AlertDialog(
                        backgroundColor: const Color(0xFFFFFAF4),
                        title: Text(provider.pizzas.toList()[index].name!),
                        content: Text(provider.pizzas.toList()[index].description!),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
