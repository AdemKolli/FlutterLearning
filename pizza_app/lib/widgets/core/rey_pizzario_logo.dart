import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

class ReyPizzarioLogo extends StatelessWidget {
  const ReyPizzarioLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: ScreenSize.width * 0.01),
          child: Container(
            height: ScreenSize.height * 0.06,
            width: ScreenSize.height * 0.06,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.amber, Colors.orange]
                  ),
                borderRadius: BorderRadius.circular(10)
              ),
            child: const Icon(
              Icons.fastfood,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: ScreenSize.width * 0.02),
         Text(
          "Rey Pizzario",
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),
        ),
      ],
    );
  }
}
