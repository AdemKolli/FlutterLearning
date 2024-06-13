import 'package:flutter/material.dart';

class BottomBarProvider with ChangeNotifier {
  int selectedIndex = 0;
  
  void changeSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }  
}