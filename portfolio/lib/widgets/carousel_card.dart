import 'package:flutter/material.dart';
import 'package:portfolio/widgets/screen_info.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key, required this.type, required this.rating, required this.client, required this.feedback});

  final String type;
  final int rating;
  final String client;
  final String feedback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(16),
        width: ScreenInfo.width > 600 ? ScreenInfo.width * 0.25 : ScreenInfo.width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          border: Border.all(
            color: const Color(0xFF323232).withOpacity(0.77),
            width: 5
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                type,
                style: TextStyle(
                  fontSize: ScreenInfo.width > 600 ? 28 : 24,
                  fontFamily: 'HubotExpanded',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < rating; i++)  
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                client,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.4),
                  fontFamily: 'HubotExpanded',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                feedback,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontFamily: 'HubotExpanded',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}