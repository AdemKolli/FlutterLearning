import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:pizza_app/widgets/home/types_bar.dart';
import 'package:pizza_app/widgets/home/types_details.dart';
import 'package:pizza_app/widgets/offers/offer_card.dart';
import 'package:provider/provider.dart';

class FavoritesContent extends StatelessWidget {
  const FavoritesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StockProvider>(
      builder: (context, provider, _) => Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.035),
            child: SizedBox(
              height: ScreenSize.height * 0.615,
              child: provider.favoritePizzas.isEmpty ? Center(
                child: Text(
                  'Nothing to show',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                  color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500)
                )
              ) : ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: provider.favoritePizzas.length,
                itemBuilder: (context, index) {
                  List<Pizza> list = provider.favoritePizzas.toList();
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
    );
  }
}