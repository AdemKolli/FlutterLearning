import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/screen_info.dart';

class LandingPageContent extends StatelessWidget {
  const LandingPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: ScreenInfo.width * 0.4,
          height: ScreenInfo.height * 0.4,
          child: AnimatedTextKit(
              repeatForever: true,
              totalRepeatCount: 2,
              displayFullTextOnTap: true,
              animatedTexts: [
                RotateAnimatedText(
                    duration: const Duration(seconds: 2),
                    rotateOut: true,
                    'Hey there, It’s Adem, an aspiring Developer and Designer',
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 48,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.w600,
                    )),
                RotateAnimatedText(
                    duration: const Duration(seconds: 2),
                    rotateOut: true,
                    "a 2nd year CSE student at the University of Guelma",
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 48,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.w600,
                    )),
              ]),
        ),
        SizedBox(
          width: ScreenInfo.width * 0.1,
        ),
        SizedBox(
          width: ScreenInfo.height * 0.5,
          height: ScreenInfo.height * 0.5,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: ScreenInfo.height * 0.45,
                height: ScreenInfo.height * 0.45,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/pictures/Ellipse 2.png'))),
                child: ClipOval(
                  child: Image.asset('assets/pictures/Mask group.png'),
                ),
              ),
              Image.asset('assets/pictures/Subtract.png'),
            ],
          ),
        )
      ],
    );
  }
}
