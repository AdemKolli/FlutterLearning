import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/home/custom_bottombar.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:pizza_app/widgets/home/selected_location.dart';

class CustomBottomBarWrapper extends StatelessWidget {
  const CustomBottomBarWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height * 0.2,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFAF4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(42),
          topRight: Radius.circular(42)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, -1)
          )
        ]
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SelectedLocation(),
          SizedBox(height: ScreenSize.height * 0.006,),
          const CustomBottomBar(),
        ],
      ),
    );
  }
}