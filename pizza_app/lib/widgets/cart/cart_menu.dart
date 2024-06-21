import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

class CartMenu extends StatelessWidget {
  const CartMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  color: Colors.white, fontSize: 32, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              height: ScreenSize.height * 0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFAF4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42)),
              ),
              child: Center(
                child: Text(
                  'Coming Soon',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              )),
        ],
      ),
    );
  }
}
