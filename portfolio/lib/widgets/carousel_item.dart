import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.star,
          color: Color(0xFFF9DCA5),
          size: 38,
        ),
        Text(
          'Mobile development',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'HubotExpanded',
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          Icons.star,
          color: Color(0xFFF9DCA5),
          size: 38,
        ),
        Text(
          'UI/UX Design',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'HubotExpanded',
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          Icons.star,
          color: Color(0xFFF9DCA5),
          size: 38,
        ),
        Text(
          'Visual identities',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'HubotExpanded',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
