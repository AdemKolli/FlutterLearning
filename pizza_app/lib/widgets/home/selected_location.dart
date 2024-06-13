import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

class SelectedLocation extends StatelessWidget {
  const SelectedLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.15),
      height: ScreenSize.height * 0.06,
      width: ScreenSize.width,
      child: Column(
        children: [
          Text(
            "Selected location:",
            style: GoogleFonts.poppins(
              color: Colors.red,
              fontSize: 11
            ),
          ),
          Text(
            "Street of Revolution - Collo, Skikda, Algeria",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
          ),
        ],
      ),
    );
  }
}