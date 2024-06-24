import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_app/providers/navigation_provider.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/widgets/core/custom_button.dart';
import 'package:pizza_app/widgets/core/rey_pizzario_logo.dart';
import 'package:pizza_app/widgets/favorites/favorites_content.dart';
import 'package:pizza_app/widgets/home/custom_appbar.dart';
import 'package:pizza_app/widgets/home/custom_bottombar_wrapper.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:pizza_app/widgets/home/home_content.dart';
import 'package:pizza_app/widgets/offers/offers_content.dart';
import 'package:provider/provider.dart';

import '../widgets/cart/cart_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color colorUp = const Color.fromARGB(255, 247, 85, 35);
  Color colorDown = const Color.fromARGB(255, 234, 122, 24);
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, value, _) => Scaffold(
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 800),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            colorDown,
            colorUp,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: ScreenSize.height * 0.76,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomAppBar(children: [
                      IconButton(
                        onPressed: () {
                          Color temp = colorUp;
                          colorUp = colorDown;
                          colorDown = temp;
                          setState(() {});
                        },
                        icon: const Icon(Icons.workspaces_outlined),
                        color: Colors.white,
                      ),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        switchInCurve: Curves.easeIn, // Adjust as needed
                        switchOutCurve: Curves.easeOut, // Adjust as needed
                        child: value.selectedIndex == 0
                            ? Text(
                                'Offers',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )
                            : (value.selectedIndex == 1
                                ? const ReyPizzarioLogo()
                                : Text(
                                    'Favorites',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  )),
                      ),
                      Consumer<StockProvider>(
                        builder: (context, provider, _) => Stack(
                          children: [
                            CustomButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => const CartMenu()
                                );
                              },
                              height: ScreenSize.height * 0.05,
                              width: ScreenSize.width * 0.13,
                              color: const Color(0xFFFFFAF4),
                              shadowColor: Colors.black.withOpacity(0.15),
                              child: const Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.red,
                              ),
                            ),
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 150),
                              child: provider.cart.isEmpty ? const SizedBox() : Container(
                                height: ScreenSize.width * 0.033,
                                width: ScreenSize.width * 0.033,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Text(
                                     '${provider.cart.length}',
                                     style: GoogleFonts.poppins(
                                         color: Colors.white,
                                         fontSize: 8,
                                         fontWeight: FontWeight.w500),
                                   ),
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      switchInCurve: Curves.easeIn, // Adjust as needed
                      switchOutCurve: Curves.easeOut, // Adjust as needed
                      child: value.selectedIndex == 0
                          ? const OffersContent()
                          : (value.selectedIndex == 1
                              ? const HomeContent()
                              : const FavoritesContent()),
                    ),
                  ],
                ),
              ),
              const CustomBottomBarWrapper()
            ],
          ),
        ),
      ),
    );
  }
}
