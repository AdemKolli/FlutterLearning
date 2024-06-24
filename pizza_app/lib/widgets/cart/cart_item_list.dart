import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:provider/provider.dart';
import 'package:text_scroll/text_scroll.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key, required this.image, required this.title, required this.price, required this.quantity, required this.itemId});
  final String image;
  final String title;
  final double price;
  final int quantity;
  final int itemId;

  @override
  Widget build(BuildContext context) {
    return Consumer<StockProvider>(
      builder: (context, provider, _) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
            width: 1.5
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: ScreenSize.width * 0.4,
                  child: TextScroll(
                    title,
                    pauseBetween: const Duration(seconds: 1),
                    velocity: const Velocity(pixelsPerSecond: Offset(50, 0)),
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (quantity > 1) {
                      provider.removeFromCart(itemId,false);
                    }
                  },
                  icon: const Icon(Icons.remove),
                  color: quantity == 1 ? Colors.grey :Colors.red,
                ),
                Text(
                  quantity.toString(),
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    provider.addToCart(itemId);
                  },
                  icon: const Icon(Icons.add),
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    provider.removeFromCart(itemId,true);
                  },
                  icon: const Icon(Icons.delete_outline_rounded),
                  color: Colors.red,
                  iconSize: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}