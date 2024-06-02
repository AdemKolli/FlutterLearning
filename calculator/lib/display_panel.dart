import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayPanel extends StatelessWidget {
  final String toDisplay;
  final List<String> historyOperations;
  const DisplayPanel(
      {super.key, required this.toDisplay, required this.historyOperations});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            for (int i = 0; i < historyOperations.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  historyOperations[i],
                  style: GoogleFonts.ibmPlexSans(
                      textStyle: TextStyle(
                    color: Colors.deepOrange.withOpacity(0.4),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  )),
                ),
              ),
            Text(
              toDisplay,
              style: GoogleFonts.ibmPlexSans(
                  textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 52,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
