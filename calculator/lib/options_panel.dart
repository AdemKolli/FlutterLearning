import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OptionsPanel extends StatelessWidget {
  const OptionsPanel({super.key, required this.isLightMode});
  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 246, 240),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
                      color: Colors.black.withOpacity(0.07), width: 1.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'moon.png',
              height: 24,
              width: 24,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'sun.png',
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}