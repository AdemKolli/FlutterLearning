import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/screen_info.dart';

class ServicesPageContent extends StatelessWidget {
  const ServicesPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenInfo.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Services I offer :',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black,
                fontSize: 48,
                fontFamily: 'HubotExpanded',
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: ScreenInfo.height * 0.0125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: ScreenInfo.width * 0.3,
                  child: Image.asset(
                    'assets/pictures/OOAsset 3@2scx.png',
                  ),
                ),
                SizedBox(
                  width: ScreenInfo.width * 0.1,
                ),
                SizedBox(
                  width: ScreenInfo.width * 0.4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '•  Mobile Development: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontFamily: 'HubotExpanded',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: ScreenInfo.height * 0.0125,
                            ),
                            const Text(
                              'I am passionate about creating seamless and engaging mobile experiences. With a keen eye for detail and a deep understanding of the Flutter framework, I offer a range of mobile development services designed to bring your app ideas to life',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'HubotExpanded',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenInfo.height * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '•  UI/UX and Branding Design: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontFamily: 'HubotExpanded',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: ScreenInfo.height * 0.0125,
                            ),
                            const Text(
                              'As an aspiring UI/UX designer, I offer a range of services to enhance user experiences and create visually appealing interfaces. I focus on creating intuitive, engaging, and consistent designs across all platforms, ensuring a seamless user experience from start to finish. Also,  I help create or refine your brand’s visual identity, ensuring that it is consistent and memorable across all touchpoints.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'HubotExpanded',
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        )
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
