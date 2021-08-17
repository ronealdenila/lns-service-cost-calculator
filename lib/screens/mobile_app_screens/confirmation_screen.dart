import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/providers/lns_api.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/result_screen.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';
import 'package:lns_service_cost_calculator/widgets/options_layout.dart';
import 'package:provider/provider.dart';

class ConfirmationScreen extends StatelessWidget {
  static const routeName = 'confirmation-option';

  @override
  Widget build(BuildContext context) {
    final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          BoxText.headingTwo(
            'ALMOST THERE!',
            align: TextAlign.center,
          ),
          verticalSpaceRegular,
          BoxText.caption(
            'Enter your details so that we can contact you anytime.',
            align: TextAlign.center,
          ),
          verticalSpaceRegular,
          Placeholder(fallbackHeight: 300),
        ],
      ),
    );
  }
}
