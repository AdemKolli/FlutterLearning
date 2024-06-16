import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

import '../core/rey_pizzario_logo.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height * 0.085,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.07),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: children),
      ),
    );
  }
}
