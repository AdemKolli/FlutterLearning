import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NavBarButton extends StatefulWidget {
  NavBarButton({
    super.key,
    required ScrollController scrollViewController,
    required this.position,
    required this.data,
    required this.isOpaque,
  }) : _scrollViewController = scrollViewController;

  final bool isOpaque;
  final ScrollController _scrollViewController;
  final double position;
  String data;

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeOut,
      decoration: widget.isOpaque
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFF323232))
          : null,
      padding: widget.isOpaque
          ? const EdgeInsets.symmetric(horizontal: 20, vertical: 8)
          : EdgeInsets.only(
              top: (isHovered) ? 0 : 4.0,
              bottom: !(isHovered) ? 0 : 0,
            ),
      child: InkWell(
          onHover: (value) {
            if (!widget.isOpaque) {
              setState(() {
                value ? isHovered = true : isHovered = false;
              });
            }
          },
          onTap: () {
            widget._scrollViewController.animateTo(
              widget
                  .position, // change 0.0 {double offset} to corresponding widget position
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad,
            );
          },
          child: Text(
            widget.data,
            style: TextStyle(
              color: widget.isOpaque ? Colors.white : Colors.black,
              fontFamily: 'HubotExpanded',
              fontSize: widget.isOpaque ? 16 : 20,
              fontWeight: widget.isOpaque ? FontWeight.w600 : (isHovered ? FontWeight.bold : FontWeight.normal),
            ),
          )),
    );
  }
}
