import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/models/pizza_model.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/widgets/cart/cart_item_list.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:provider/provider.dart';

class CartMenu extends StatelessWidget {
  const CartMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<StockProvider>(builder: (context, provider, _) {
      return SizedBox(
        height: ScreenSize.height * 0.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Cart',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
                height: ScreenSize.height * 0.8,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFAF4),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 250),
                    child: provider.cart.isNotEmpty
                      ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: ScreenSize.height * 0.7,
                              width: ScreenSize.width,
                              child: ListView.builder(
                                padding: const EdgeInsets.all(16),
                                itemCount: provider.cart.length,
                                itemBuilder: (context, index) {
                                  Map<Pizza, int> content =
                                      provider.cartToMap();
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: CartItemList(
                                      title: content.keys.toList()[index].name!,
                                      price:
                                          content.keys.toList()[index].price!,
                                      quantity: content.values.toList()[index],
                                      image:
                                          content.keys.toList()[index].image!,
                                      itemId:
                                          content.keys.toList()[index].pizzaId!,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: CustomButton(
                                    onPressed: () {},
                                    color: Colors.red,
                                    height: ScreenSize.height * 0.05,
                                    width: ScreenSize.width * 0.9,
                                    shadowColor: Colors.red.withOpacity(0.3),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: ScreenSize.width * 0.05),
                                      child: Center(
                                        child: Text(
                                          "Process to payment",
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
                                ),
                              ],
                            )
                          ],
                        )
                      : Center(
                          child: Text('Nothing to show',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500))),  
                  )
                )),
          ],
        ),
      );
    });
  }
}
