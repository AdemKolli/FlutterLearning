import 'package:auto_size_text/auto_size_text.dart';
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
        crossAxisAlignment: ScreenInfo.width > 600 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ScreenInfo.width > 600 ? 'Services I offer :' : 'Services \nI offer',
            textAlign: ScreenInfo.width > 600 ? TextAlign.left : TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: ScreenInfo.width > 600 ? 48 : 36,
                fontFamily: 'HubotExpanded',
                fontWeight: FontWeight.bold),
          ),
          ScreenInfo.width > 600
              ? Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenInfo.height * 0.0125),
                  child: SizedBox(
                    height: ScreenInfo.height * 0.8,
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
                                    const AutoSizeText(
                                      '•  Mobile Development: ',
                                      textAlign: TextAlign.left,
                                      maxFontSize: 30,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 32,
                                          fontFamily: 'HubotExpanded',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: ScreenInfo.height * 0.0125,
                                    ),
                                    const AutoSizeText(
                                      'I am passionate about creating seamless and engaging mobile experiences. With a keen eye for detail and a deep understanding of the Flutter framework, I offer a range of mobile development services designed to bring your app ideas to life',
                                      textAlign: TextAlign.left,
                                      maxFontSize: 16,
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
                                    const AutoSizeText(
                                      '•  UI/UX and Branding Design: ',
                                      textAlign: TextAlign.left,
                                      maxFontSize: 30,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 32,
                                          fontFamily: 'HubotExpanded',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: ScreenInfo.height * 0.0125,
                                    ),
                                    const AutoSizeText(
                                      'As an aspiring UI/UX designer, I offer a range of services to enhance user experiences and create visually appealing interfaces. I focus on creating intuitive, engaging, and consistent designs across all platforms, ensuring a seamless user experience from start to finish. Also,  I help create or refine your brand’s visual identity, ensuring that it is consistent and memorable across all touchpoints.',
                                      textAlign: TextAlign.left,
                                      maxFontSize: 16,
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
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ScreenInfo.height * 0.0125),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: ScreenInfo.height * 0.1,
                      ),
                      SizedBox(
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
                              SizedBox(
                                width: ScreenInfo.width * 0.7,
                                child: Image.asset(
                                  'assets/pictures/OOAsset 3@2scx.png',
                                ),
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
