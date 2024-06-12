import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/carousel_card.dart';
import 'package:portfolio/widgets/screen_info.dart';

class TestemonialsPage extends StatelessWidget {
  const TestemonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenInfo.height * 1.1,
      color: const Color(0xFFFFFDF9),
      child: Column(
        children: [
          const Expanded(child: TestemonialsPageContent()),
          Container(
            width: ScreenInfo.width * 0.8,
            height: 1.5,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: ScreenInfo.height * 0.05,
          ),
        ],
      ),
    );
  }
}

class TestemonialsPageContent extends StatelessWidget {
  const TestemonialsPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Testemonials',
          style: TextStyle(
              color: Colors.black,
              fontSize: ScreenInfo.width > 600 ? 48 : 36,
              fontFamily: 'HubotExpanded',
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: ScreenInfo.width > 600 ? ScreenInfo.height * 0.5 : ScreenInfo.height * 0.6,
          width: ScreenInfo.width,
          child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CarouselCard(
                      type: 'Mobile App',
                      rating: 4,
                      client: 'Anonymous',
                      feedback:
                          '“ I love this app! The design is sleek, and it runs smoothly. Highly recommend!”'),
                  CarouselCard(
                      type: 'UI/UX Design',
                      rating: 4,
                      client: 'Anonymous',
                      feedback:
                          '“ The new interface is incredibly intuitive and user-friendly. Our customers love the seamless experience!”'),
                  CarouselCard(
                      type: 'Mobile App',
                      rating: 4,
                      client: 'Anonymous',
                      feedback:
                          '“ This app is a game-changer. It’s intuitive and saves me so much time”'),
                  CarouselCard(
                      type: 'Visual Identity',
                      rating: 5,
                      client: 'Anonymous',
                      feedback:
                          '"“ I love this app! The design is sleek, and it runs smoothly. Highly recommend!”"'),
                  
                ],
              )
            ),
        )
      ],
    );
  }
}
