import 'package:calculator/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OptionsPanel extends StatelessWidget {
  const OptionsPanel({super.key, required this.isLightMode});
  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        color: Provider.of<ThemeProvider>(context).primaryColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
                      color: Provider.of<ThemeProvider>(context).secondaryColor.withOpacity(0.03), width: 1.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).setDarkTheme();
            },
            child: Image.asset(
              'assets/moon.png',
              color: !isLightMode ? Colors.amber[900] : null,
              height: 24,
              width: 24,
            ),
          ),
          GestureDetector(
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).setLightTheme();
            },
            child: Image.asset(
              'assets/sun.png',
              color: isLightMode ? Colors.amber[900] : Provider.of<ThemeProvider>(context).secondaryColor,
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}