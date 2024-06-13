import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 1;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSize.width * 0.6,
      height: ScreenSize.height * 0.07,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 246, 243, 239),
        borderRadius: BorderRadius.all(Radius.circular(32))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(
            duration: const Duration(milliseconds: 150),
            color: selectedIndex == 0 ? Colors.white : Colors.transparent,
            height: ScreenSize.width * 0.1,
            width: ScreenSize.width * 0.1,
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Center(
              child: Icon(
                Icons.star_outline_rounded,
                color: selectedIndex == 0 ? Colors.deepOrange[600] : Colors.black.withOpacity(0.4)
              )
            )
          ),
          CustomButton(
            duration: const Duration(milliseconds: 150),
            color: selectedIndex == 1 ? Colors.white : Colors.transparent,
            height: ScreenSize.width * 0.1,
            width: ScreenSize.width * 0.1,
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Center(
              child: Icon(
                Icons.local_pizza_rounded,
                color: selectedIndex == 1 ? Colors.deepOrange[600] : Colors.black.withOpacity(0.4)
              ),
            )
          ),
          CustomButton(
            duration: const Duration(milliseconds: 150),
            color: selectedIndex == 2 ? Colors.white : Colors.transparent,
            height: ScreenSize.width * 0.1,
            width: ScreenSize.width * 0.1,
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: Center(
              child: Icon(
                Icons.settings_outlined,
                color: selectedIndex == 2 ? Colors.deepOrange[600] : Colors.black.withOpacity(0.4)
              ),
            )
          )
        ],
      ),
    );
  }
}