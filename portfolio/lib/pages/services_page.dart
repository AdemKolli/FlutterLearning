import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/widgets/screen_info.dart';

import '../widgets/services_page_content.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenInfo.height * 1.15,
      color: const Color(0xFFFFFDF9),
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
          const Expanded(child: ServicesPageContent()),
          SizedBox(
            height: ScreenInfo.height * 0.05,
          ),
        ],
      ),
    );
  }
}
