import 'package:flutter/material.dart';
import 'package:pizza_app/providers/navigation_provider.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:provider/provider.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, value, _) => SizedBox(
        width: ScreenSize.width * 0.7,
        height: ScreenSize.height * 0.07,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: ScreenSize.width * 0.5,
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
                    color: value.selectedIndex == 0 ? Colors.white : Colors.transparent,
                    height: ScreenSize.width * 0.1,
                    width: ScreenSize.width * 0.1,
                    onPressed: () {
                      value.changeSelectedIndex(0);

                    },
                    child: Center(
                      child: Icon(
                        value.selectedIndex == 0 ? Icons.local_offer : Icons.local_offer_outlined,
                        color: value.selectedIndex == 0 ? Colors.deepOrange[600] : Colors.black.withOpacity(0.4)
                      )
                    )
                  ),
                  CustomButton(
                    duration: const Duration(milliseconds: 150),
                    color: value.selectedIndex == 1 ? Colors.white : Colors.transparent,
                    height: ScreenSize.width * 0.1,
                    width: ScreenSize.width * 0.1,
                    onPressed: () {
                      value.changeSelectedIndex(1);
                    },
                    child: Center(
                      child: Icon(
                        value.selectedIndex == 1 ? Icons.local_pizza_rounded : Icons.local_pizza_outlined,
                        color: value.selectedIndex == 1 ? Colors.deepOrange[600] : Colors.black.withOpacity(0.4)
                      ),
                    )
                  ),
                  CustomButton(
                    duration: const Duration(milliseconds: 150),
                    color: value.selectedIndex == 2 ? Colors.white : Colors.transparent,
                    height: ScreenSize.width * 0.1,
                    width: ScreenSize.width * 0.1,
                    onPressed: () {
                      value.changeSelectedIndex(2);
                    },
                    child: Center(
                      child: Icon(
                        value.selectedIndex == 2 ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                        color: value.selectedIndex == 2 ? Colors.deepOrange[600] : Colors.black.withOpacity(0.4)
                      ),
                    )
                  )
                ],
              ),
            ),
            Container(
              width: ScreenSize.width * 0.15,
              height: ScreenSize.height * 0.07,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 246, 243, 239),
                borderRadius: BorderRadius.all(Radius.circular(32))
              ),
              child: CustomButton(
                    duration: const Duration(milliseconds: 150),
                    color: Colors.transparent,
                    height: ScreenSize.width * 0.1,
                    width: ScreenSize.width * 0.1,
                    onPressed: () {
                    },
                    child: Center(
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.black.withOpacity(0.4)
                      ),
                    )
                  )
            ),
          ],
        ),
      ),
    );
  }
}