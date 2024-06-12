import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/screen_info.dart';

import '../widgets/carousel_item.dart';
import '../widgets/landing_page_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: ScreenInfo.height * 0.9,
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
                  width: ScreenInfo.width > 600 ? ScreenInfo.width * 0.34 : ScreenInfo.width * 0.19,
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
                  width: ScreenInfo.width > 600 ? ScreenInfo.width * 0.34 : ScreenInfo.width * 0.19,
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
                  items: ScreenInfo.width > 600 ? [
                    CarouselItemDesktop(),
                  ] : [
                    CarouselItemMobile(skill: 'Mobile Development',),
                    CarouselItemMobile(skill: 'UI/UX Design',),
                    CarouselItemMobile(skill: 'Visual Identities',),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    autoPlayCurve: Curves.linear,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: ScreenInfo.width * 0.8 / ScreenInfo.height * 0.1 ,
                    autoPlayAnimationDuration: const Duration(seconds: 6),
                  )),
            )
          ],
        ),
      ),
    ]);
  }
}
