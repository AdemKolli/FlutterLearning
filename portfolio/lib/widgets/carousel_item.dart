import 'package:flutter/material.dart';
import 'package:portfolio/widgets/screen_info.dart';

class CarouselItemDesktop extends StatelessWidget {
  const CarouselItemDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            fontSize: ScreenInfo.width > 600 ? 24 : 18,
            fontFamily: 'HubotExpanded',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}


class CarouselItemMobile extends StatelessWidget {
  const CarouselItemMobile({super.key, required this.skill});
  final String skill;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.star,
          color: Color(0xFFF9DCA5),
          size: 38,
        ),
        Text(
          skill,
          style: TextStyle(
            color: Colors.white,
            fontSize: ScreenInfo.width > 600 ? 24 : 18,
            fontFamily: 'HubotExpanded',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
