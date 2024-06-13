import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

import '../core/rey_pizzario_logo.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * 0.085,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.07),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.workspaces_outlined),
            color: Colors.white,
          ),
          const ReyPizzarioLogo(),
           CustomButton(
            onPressed: () {},
            height: ScreenSize.height * 0.05,
            width: ScreenSize.width * 0.13,
            color: const Color(0xFFFFFAF4),
            shadowColor: Colors.black.withOpacity(0.15),
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.red,
            ),
          ),
        ]),
      ),
    );
  }
}
