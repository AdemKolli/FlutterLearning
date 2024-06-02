import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeProvider with ChangeNotifier {
  bool isLightMode = true;
  Color primaryColor= const Color.fromARGB(255, 255, 247, 247);
  Color hoverColor= const Color.fromARGB(255, 255, 235, 235);
  Color secondaryColor = const Color.fromARGB(255, 32,32,32);
  Color? accentColor = Colors.amber[900];

  ThemeData getTheme() {
    return isLightMode? ThemeData.light() : ThemeData.dark();
  }
  ThemeMode getThemeMode() {
    return isLightMode? ThemeMode.light : ThemeMode.dark;
  }
  void toggleTheme() {
    isLightMode =!isLightMode;
    notifyListeners();
  }
  void _setTheme(ThemeData theme) {
    isLightMode = theme.brightness == Brightness.light;
    primaryColor = isLightMode ? const Color.fromARGB(255, 255, 247, 247) : const Color.fromARGB(255, 32,32,32);
    secondaryColor = isLightMode? const Color.fromARGB(255, 32,32,32) : const Color.fromARGB(255, 255, 247, 247);
    hoverColor = isLightMode? const Color.fromARGB(255, 255, 235, 235) : Color.fromARGB(255, 31, 28, 28);
    notifyListeners();
  }
  void setLightTheme() {
    _setTheme(ThemeData.light());
  }
  void setDarkTheme() {
    _setTheme(ThemeData.dark());
  }
}