import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

class OfferItemCard extends StatelessWidget {
  const OfferItemCard({super.key, required this.image, required this.title, required this.price});

  final String image;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
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
              image,
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
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
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
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.black.withOpacity(0.4),
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
              ]
            ),
          ),
        ],
      ),
    );
  }
}