import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:pizza_app/widgets/home/pizza_item_card.dart';
import 'package:pizza_app/widgets/home/types_bar.dart';
import 'package:pizza_app/widgets/offers/offer_card.dart';


class OffersContent extends StatelessWidget {
  const OffersContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TypesBar(),
        SizedBox(height: ScreenSize.height * 0.04),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.035),
          child: SizedBox(
            height: ScreenSize.height * 0.5,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: OfferItemCard(
                    image: 'assets/images/R (9).png',
                    title: 'Pizza',
                    price: 10.00,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
