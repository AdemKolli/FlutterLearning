import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/pages/contact_me.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/widgets/my_navigation_bar.dart';
import 'package:portfolio/pages/projects_page.dart';
import 'package:portfolio/pages/services_page.dart';
import 'package:portfolio/pages/testemonials_page.dart';

import 'widgets/my_navigation_bar.dart';
import 'widgets/nav_bar_button.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  ScrollController _scrollViewController = ScrollController();
  bool _showAppbar = true;
  bool isScrollingDown = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          AnimatedContainer(
              height: _showAppbar ? 82.0 : 0.0,
              width: width,
              color: const Color(0xFFF9E4B2),
              duration: const Duration(milliseconds: 100),
              child: MyNavigationBar(width: width, scrollViewController: _scrollViewController)
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollViewController,
              child: const Column(
                children: <Widget>[
                  HomePage(),
                  ServicesPage(),
                  ProjectsPage(),
                  TestemonialsPage(),
                  ContactMePage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
