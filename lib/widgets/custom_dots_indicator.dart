import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  final double? pageIndex;
  const CustomDotsIndicator({
    this.pageIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new DotsIndicator(
      dotsCount: 9,
      position: pageIndex!,
      decorator: DotsDecorator(
        color: kcPrimaryShadeColor, // Inactive color
        activeColor: kcPrimaryColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        spacing: const EdgeInsets.all(10.0),
      ),
    );
  }
}
