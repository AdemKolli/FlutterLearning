import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:pizza_app/widgets/home/types_bar.dart';
import 'package:pizza_app/widgets/home/types_details.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TypesBar(),
        SizedBox(height: ScreenSize.height * 0.04),
        TypesDetails(),
      ],
    );
  }
}
