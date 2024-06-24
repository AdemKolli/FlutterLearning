import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:provider/provider.dart';
import 'package:text_scroll/text_scroll.dart';

class OfferItemCard extends StatelessWidget {
  OfferItemCard(
      {super.key, required this.itemId,
      });

  final int itemId;
  late Pizza itemContent;

  @override
  Widget build(BuildContext context) {
    return Consumer<StockProvider>(
      builder: (context, provider, _) {
        itemContent = provider.pizzas.firstWhere((element) => element.pizzaId == itemId);
        return Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: ScreenSize.width * 0.2,
              child: Image.asset(
                itemContent.image!,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: ScreenSize.height * 0.125,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: ScreenSize.width * 0.3,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextScroll(
                        itemContent.name!,
                        textAlign: TextAlign.center,
                        mode: TextScrollMode.bouncing,
                        velocity: const Velocity(pixelsPerSecond: Offset(25, 0)),
                        delayBefore: const Duration(milliseconds: 500),
                        pauseBetween: const Duration(seconds: 2),
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    duration: const Duration(milliseconds: 200),
                    onPressed: () {
                      provider.cart.containsKey(itemId) ? null : provider.addToCart(itemId);
                    },
                    color: provider.cart.containsKey(itemId) ? Colors.grey : Colors.red,
                    height: ScreenSize.height * 0.05,
                    shadowColor: provider.cart.containsKey(itemId) ? Colors.grey.withOpacity(0.3) : Colors.red.withOpacity(0.3),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.05),
                      child: Center(
                        child: Text(
                          provider.cart.containsKey(itemId) ? "In cart" : "Add to cart",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: ScreenSize.width * 0.065,
              height: ScreenSize.height * 0.085,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      onPressed: () {
                        provider.toggleFavorite(itemId);
                      },
                      child: Icon(
                      provider.pizzas.firstWhere((element) => element.pizzaId == itemId).isFavorite! ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                      color: provider.pizzas.firstWhere((element) => element.pizzaId == itemId).isFavorite! ? Colors.red : Colors.black.withOpacity(0.4),
                      size: 24,
                    ),
                    ),
                    CustomButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.info,
                        color: Colors.black.withOpacity(0.3),
                        size: 24,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      );
      } 
    );
  }
}
