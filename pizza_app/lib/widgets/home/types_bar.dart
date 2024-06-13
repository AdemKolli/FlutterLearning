import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';

class TypesBar extends StatefulWidget {
  const TypesBar({super.key});

  @override
  State<TypesBar> createState() => _TypesBarState();
}

class _TypesBarState extends State<TypesBar> {
  List<String> typesList = [
    "",
    "Pizzas",
    "Tacos",
    "Burgers",
    "Dishes",
  ];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.width,
      height: ScreenSize.height * 0.075,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: typesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.02),
            child: index == 0
                ? CustomButton(
                    onPressed: () {},
                    height: ScreenSize.height * 0.075,
                    color: const Color(0xFFFFFAF4),
                    shadowColor: Colors.black.withOpacity(0.15),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenSize.width * 0.035),
                      child: const Icon(
                        Icons.filter_list,
                        color: Colors.red,
                      ),
                    )))
                : CustomButton(
                    onPressed: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    color: index == selectedIndex
                        ? const Color(0xFFFFFAF4)
                        : Colors.black.withOpacity(0.2),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenSize.width * 0.05),
                        child: Text(
                          typesList[index],
                          style: GoogleFonts.poppins(
                            color: index == selectedIndex
                                ? Colors.red
                                : Colors.white,
                            fontSize: 11,
                            fontWeight: index == selectedIndex
                                ? FontWeight.w500
                                : FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
