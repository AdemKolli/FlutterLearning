import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.color,
    this.shadowColor,
    this.height, 
    this.width,
    this.duration,
    required this.onPressed, 
    required this.child
  });

  final Color? color;
  final double? height;
  final double? width;
  final Color? shadowColor;
  final Duration? duration;
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: duration ?? const Duration(milliseconds: 100),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: shadowColor ?? Colors.transparent,
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: child
      ),
    );
  }
}
