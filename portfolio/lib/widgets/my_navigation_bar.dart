import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_bar_button.dart';
import 'package:portfolio/widgets/screen_info.dart';

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
        ScreenInfo.width > 600 ? SizedBox(
          width: width * 0.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarButton(
                isOpaque: false,
                data: 'Home',
                scrollViewController: _scrollViewController,
                position: 0,
              ),
              NavBarButton(
                isOpaque: false,
                data: 'Services',
                scrollViewController: _scrollViewController,
                position: ScreenInfo.height,
              ),
              NavBarButton(
                isOpaque: false,
                data: 'Projects',
                scrollViewController: _scrollViewController,
                position: ScreenInfo.height * 2,
              ),
              NavBarButton(
                isOpaque: false,
                data: 'Testemonials',
                scrollViewController: _scrollViewController,
                position: ScreenInfo.height * 3,
              ),
            ],
          ),
        ) : SizedBox(),
        NavBarButton(
          isOpaque: true,
          data: 'Contact Me',
          scrollViewController: _scrollViewController,
          position: ScreenInfo.height * 4,
        ),
      ],
    );
  }
}

