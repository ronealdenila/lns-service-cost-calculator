import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';

class OptionsLayout extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? mainButtonTitle;
  final String? validationMessage;
  final Widget? grid;
  final void Function()? onMainButtonTapped;

  const OptionsLayout({
    Key? key,
    this.title,
    this.subtitle,
    this.mainButtonTitle,
    this.validationMessage,
    this.grid,
    this.onMainButtonTapped,
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
          grid!,
          if (validationMessage != null) verticalSpaceRegular,
          BoxButton(
            title: mainButtonTitle!,
            onTap: onMainButtonTapped,
          )
        ],
      ),
    );
  }
}
