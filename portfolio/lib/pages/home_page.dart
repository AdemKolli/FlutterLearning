import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/screen_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: ScreenInfo.height * 1.1,
        decoration: const BoxDecoration(
            color: Color(0xFFFFFDF9),
            image: DecorationImage(
                opacity: 0.23,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/pictures/OOAsset 7@2scx.png',
                ))),
      ),
      Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: ScreenInfo.height * 0.05,
            ),
            Container(
              width: ScreenInfo.width * 0.8,
              height: 1.5,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: ScreenInfo.height * 0.1,
            ),
            const LandingPageContent(),
            SizedBox(
              height: ScreenInfo.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ScreenInfo.width * 0.34,
                  height: 1.5,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    'My skills',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: ScreenInfo.width * 0.34,
                  height: 1.5,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            SizedBox(
              height: ScreenInfo.height * 0.04,
            ),
            Container(
              height: ScreenInfo.height * 0.1,
              width: ScreenInfo.width,
              color: const Color(0xFF323232),
              child: CarouselSlider(
                  items: const [
                    CarouselItem(),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    autoPlayCurve: Curves.linear,
                    pauseAutoPlayOnTouch: true,
                    autoPlayAnimationDuration: const Duration(seconds: 6),
                  )),
            )
          ],
        ),
      ),
    ]);
  }
}

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
