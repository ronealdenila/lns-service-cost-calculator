import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';
import 'package:lns_service_cost_calculator/widgets/custom_dots_indicator.dart';

class OptionsLayout extends StatelessWidget {
  final String? title;
  final String? mainButtonTitle;
  final Widget? body;
  final String? subtitle;
  final String? validationMessage;

  const OptionsLayout({
    Key? key,
    required this.title,
    required this.mainButtonTitle,
    required this.body,
    this.subtitle,
    this.validationMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          verticalSpaceRegular,
          BoxText.headingThree(
            title!,
            align: TextAlign.center,
          ),
          verticalSpaceSmall,
          BoxText.caption(
            subtitle!,
            align: TextAlign.center,
          ),
          if (validationMessage != null)
            BoxText.body(
              validationMessage!,
              color: Colors.red,
            ),
          verticalSpaceRegular,
          body!,
          if (validationMessage != null) verticalSpaceRegular,
        ],
      ),
    );
  }
}
