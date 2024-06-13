import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/widgets/home/custom_appbar.dart';
import 'package:pizza_app/widgets/home/custom_bottombar_wrapper.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:pizza_app/widgets/home/types_bar.dart';
import 'package:pizza_app/widgets/home/types_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 247, 85, 35),
              Color.fromARGB(255, 234, 122, 24),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: ScreenSize.height * 0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomAppBar(),
                  const TypesBar(),
                  TypesDetails(),
                ],
              ),
            ),
            const CustomBottomBarWrapper()
          ],
        ),
      ),
    );
  }
}
