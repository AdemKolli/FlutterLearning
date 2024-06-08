import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:portfolio/widgets/screen_info.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPageContent extends StatelessWidget {
  const ProjectsPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenInfo.width * 0.1),
      child: Column(
        children: [
          const Text(
            'Previous Projects',
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontFamily: 'HubotExpanded',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Check out my accounts on :',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'HubotExpanded',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: ScreenInfo.height * 0.05,
          ),
          const AccountButtonSet(),
        ],
      ),
    );
  }
}

class AccountButtonSet extends StatelessWidget {
  const AccountButtonSet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenInfo.height * 0.6,
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: GitHubButton(),
              ),
              SizedBox(
                width: ScreenInfo.width * 0.02,
              ),
              const Expanded(
                child: DribbbleButton(),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: ScreenInfo.height * 0.035),
              child: const InstagramButton(),
            ),
          )
        ],
      ),
    );
  }
}

class InstagramButton extends StatefulWidget {
  const InstagramButton({
    super.key,
  });

  @override
  State<InstagramButton> createState() => _InstagramButtonState();
}

class _InstagramButtonState extends State<InstagramButton> {
  bool isHovered = false;

  _launchURLBrowser() async {
  var url = Uri.parse("https://instagram.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? isHovered = true : isHovered = false;
        });
      },
      onTap: _launchURLBrowser,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding:
            EdgeInsets.symmetric(horizontal: isHovered ? 40 : 36, vertical: 38),
        decoration: BoxDecoration(
          boxShadow: isHovered
              ? [
                  BoxShadow(
                      color: const Color(0xFFE216F4).withOpacity(0.2),
                      offset: const Offset(5, 2),
                      blurRadius: 20),
                  BoxShadow(
                      color: const Color(0xFFFA8518).withOpacity(0.2),
                      offset: const Offset(-5, -7),
                      blurRadius: 20),
                ]
              : null,
          gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [
                Color(0xFFFA8518),
                Color(0xFFE216F4),
              ]),
          borderRadius: BorderRadius.circular(26),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/pictures/Vector-1.svg'),
                const Text('Instagram',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
            SizedBox(
              height: ScreenInfo.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('My profile link',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.bold,
                    )),
                Padding(
                  padding: isHovered
                      ? const EdgeInsets.only(left: 8)
                      : const EdgeInsets.only(left: 0),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DribbbleButton extends StatefulWidget {
  const DribbbleButton({
    super.key,
  });

  @override
  State<DribbbleButton> createState() => _DribbbleButtonState();
}

class _DribbbleButtonState extends State<DribbbleButton> {
  bool isHovered = false;
  _launchURLBrowser() async {
  var url = Uri.parse("https://dribbble.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? isHovered = true : isHovered = false;
        });
      },
      onTap: _launchURLBrowser,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding:
            EdgeInsets.symmetric(horizontal: isHovered ? 36 : 30, vertical: 32),
        decoration: BoxDecoration(
            color: const Color(0xFFEA1BC9),
            borderRadius: BorderRadius.circular(26),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                        color: const Color(0xFFEA1BC9).withOpacity(0.3),
                        offset: const Offset(5, 2),
                        blurRadius: 20)
                  ]
                : null),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/pictures/Vector.svg'),
                const Text('Dribbble',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
            SizedBox(
              height: ScreenInfo.height * 0.02,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My profile link',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.bold,
                    )),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GitHubButton extends StatefulWidget {
  const GitHubButton({
    super.key,
  });

  @override
  State<GitHubButton> createState() => _GitHubButtonState();
}

class _GitHubButtonState extends State<GitHubButton> {
  bool isHovered = false;

  _launchURLBrowser() async {
  var url = Uri.parse("https://github.com/AdemKolli");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          value ? isHovered = true : isHovered = false;
        });
      },
      onTap: _launchURLBrowser,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding:
            EdgeInsets.symmetric(horizontal: isHovered ? 36 : 30, vertical: 24),
        decoration: BoxDecoration(
            color: const Color(0xFF060319),
            borderRadius: BorderRadius.circular(26),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      blurRadius: 12,
                      color: const Color(0xFF47C5ED).withOpacity(0.25),
                    )
                  ]
                : null,
            border: const GradientBoxBorder(
                width: 5,
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF77C4FF),
                      Color(0xFF77C4FF),
                      Color(0xFFBE26FF)
                    ]))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/pictures/Component 2.svg'),
                const Text('Github',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
            SizedBox(
              height: ScreenInfo.height * 0.02,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My profile link',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'HubotExpanded',
                      fontWeight: FontWeight.bold,
                    )),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
