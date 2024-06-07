import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_bar_button.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({
    super.key,
    required this.width,
    required ScrollController scrollViewController,
  }) : _scrollViewController = scrollViewController;

  final double width;
  final ScrollController _scrollViewController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/pictures/OOAsset 1@2scx.png',
          scale: 30,
        ),
        SizedBox(
          width: width * 0.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarButton(
                isOpaque: false,
                data: 'Home',
                scrollViewController: _scrollViewController,
                position: 300,
              ),
              NavBarButton(
                isOpaque: false,
                data: 'Services',
                scrollViewController: _scrollViewController,
                position: 900,
              ),
              NavBarButton(
                isOpaque: false,
                data: 'Projects',
                scrollViewController: _scrollViewController,
                position: 900,
              ),
              NavBarButton(
                isOpaque: false,
                data: 'Testemonials',
                scrollViewController: _scrollViewController,
                position: 900,
              ),
            ],
          ),
        ),
        NavBarButton(
          isOpaque: true,
          data: 'Contact Me',
          scrollViewController: _scrollViewController,
          position: 900,
        ),
      ],
    );
  }
}

