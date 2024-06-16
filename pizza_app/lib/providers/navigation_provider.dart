import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/favorites/favorites_content.dart';
import 'package:pizza_app/widgets/home/home_content.dart';
import 'package:pizza_app/widgets/offers/offers_content.dart';

class NavigationProvider with ChangeNotifier {
  int selectedIndex = 1;

  List<String> titles = [
    'Home',
    'Offers',
    'Favorites',
  ];

  List<Widget> contents = [
    const HomeContent(),
    const OffersContent(),
    const FavoritesContent(),
  ];
  
  void changeSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }  
}