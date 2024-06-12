import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/widgets/screen_info.dart';

import '../widgets/projects_page_content.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenInfo.width > 600 ? ScreenInfo.height * 1.1 : ScreenInfo.height * 1.35,
      width: ScreenInfo.width,
      color: const Color(0xFF323232),
      child: Column(
        children: [
          SizedBox(
            height: ScreenInfo.height * 0.05,
          ),
          Container(
            width: ScreenInfo.width * 0.8,
            height: 1.5,
            decoration: BoxDecoration(
                color: Color(0xFFF9E4B2), borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: ScreenInfo.height * 0.05,
          ),
          const Expanded(child: ProjectsPageContent()),
          SizedBox(
            height: ScreenInfo.height * 0.05,
          ),
          Container(
            width: ScreenInfo.width * 0.8,
            height: 1.5,
            decoration: BoxDecoration(
                color: Color(0xFFF9E4B2), borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: ScreenInfo.height * 0.05,
          ),
        ],
      ),
    );
  }
}
