import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/widgets/screen_info.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  _launchURLBrowser(String link) async {
  var url = Uri.parse(link);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenInfo.height * 0.3,
      width: ScreenInfo.width,
      color: const Color(0xFF323232),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: ScreenInfo.width * 0.6,
            child: ScreenInfo.width > 600 ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Contact me :',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'HubotExpanded',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: ScreenInfo.width * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          _launchURLBrowser(
                              'https://www.facebook.com/');
                        },
                        child: SvgPicture.asset(
                          'assets/pictures/Social Icons.svg',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURLBrowser(
                              'https://www.instagram.com/');
                        },
                        child: SvgPicture.asset('assets/pictures/Social Icons-1.svg'),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURLBrowser(
                              'https://www.linkedin.com/');
                        },
                        child: SvgPicture.asset('assets/pictures/Social Icons-2.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ) : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Contact me :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontFamily: 'HubotExpanded',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: ScreenInfo.height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          _launchURLBrowser(
                              'https://www.facebook.com/');
                        },
                        child: SvgPicture.asset(
                          'assets/pictures/Social Icons.svg',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURLBrowser(
                              'https://www.instagram.com/');
                        },
                        child: SvgPicture.asset('assets/pictures/Social Icons-1.svg'),
                      ),
                      InkWell(
                        onTap: () {
                          _launchURLBrowser(
                              'https://www.linkedin.com/');
                        },
                        child: SvgPicture.asset('assets/pictures/Social Icons-2.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            '2024 ©.  All rights reserved',
            style: TextStyle(
              color: Colors.white,
              fontSize: ScreenInfo.width > 600 ?  14 : 10,
              fontFamily: 'HubotExpanded',
              fontWeight: FontWeight.normal,
            ),  
          )
        ],
      ),
    );
  }
}
