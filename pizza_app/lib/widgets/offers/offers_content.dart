import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:pizza_app/widgets/home/pizza_item_card.dart';
import 'package:pizza_app/widgets/home/types_bar.dart';
import 'package:pizza_app/widgets/offers/offer_card.dart';
import 'package:provider/provider.dart';


class OffersContent extends StatelessWidget {
  const OffersContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StockProvider>(
      builder: (context, provider, _) => Column(
        children: [
          const TypesBar(),
          SizedBox(height: ScreenSize.height * 0.04),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.035),
            child: SizedBox(
              height: ScreenSize.height * 0.5,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: provider.pizzas.length,
                itemBuilder: (context, index) {
                  List<Pizza> list = provider.pizzas.toList();
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: OfferItemCard(
                      itemId: list[index].pizzaId!,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
