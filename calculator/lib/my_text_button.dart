import 'package:calculator/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({super.key, this.onPressed, required this.child, this.onLongPress, this.color});

  final void Function()? onPressed;
  final Color? color;
  final void Function()? onLongPress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 12,
      height: 12,
      child: TextButton(
        style: ButtonStyle( 
          foregroundColor: MaterialStateProperty.all<Color>(color ?? Provider.of<ThemeProvider>(context).secondaryColor),
          backgroundColor: MaterialStateProperty.all<Color>(Provider.of<ThemeProvider>(context).primaryColor),
          overlayColor: MaterialStateProperty.all<Color>(Provider.of<ThemeProvider>(context).hoverColor),
          textStyle: MaterialStatePropertyAll(
            GoogleFonts.ibmPlexSans(
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              )
            )
          )
        ),
        onLongPress: onLongPress,
        onPressed: onPressed,
        child: child
      ),
    );
  }
}