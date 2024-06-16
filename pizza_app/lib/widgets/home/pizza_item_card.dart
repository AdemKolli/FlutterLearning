import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:provider/provider.dart';

class PizzaItemCard extends StatelessWidget {
  const PizzaItemCard({super.key, required this.image, required this.title, required this.price, this.onPressed});

  final String image;
  final String title;
  final double price;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<StockProvider>(
      builder: (context, provider, _) => Container(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 8, bottom: 20),
        width: ScreenSize.width * 0.6,
        height: ScreenSize.height * 0.4,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: ScreenSize.height * 0.065,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onPressed: onPressed!,
                    child: Icon(
                      Icons.info,
                      color: Colors.black.withOpacity(0.3),
                      size: 24,
                    ),
                  ),
                  CustomButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.black.withOpacity(0.4),
                      size: 24,
                    ),
                  ),
                ]
              ),
            ),
            Expanded(
              child: SizedBox(
                width: ScreenSize.width * 0.5,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: ScreenSize.width * 0.5,
              height: ScreenSize.height * 0.075,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: ScreenSize.width * 0.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onPressed: () {},
                    color: Colors.red,
                    height: ScreenSize.height * 0.05,
                    shadowColor: Colors.red.withOpacity(0.3),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.05),
                      child: Center(
                        child: Text(
                          "Add to cart",
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
                  CustomButton(
                    onPressed: () {},
                    height: ScreenSize.height * 0.06,
                    child: Center(
                      child: Text(
                        "\$${price.toString()}",
                        textAlign: TextAlign.right,
                        style: GoogleFonts.poppins(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}