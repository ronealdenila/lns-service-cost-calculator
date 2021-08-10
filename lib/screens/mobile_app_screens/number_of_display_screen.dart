import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/constants/app_strings.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/type_of_authentication_screen.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/widgets/mobile_application_canvas_option.dart';

class NumberOfDisplayScreen extends StatelessWidget {
  static const routeName = '/number-of-display-option';

  @override
  Widget build(BuildContext context) {
    List<bool> isSelected = [
      false,
      false,
      false,
      false,
      false,
      false,
    ];

    List<String> details = [
      '5 SCREENS',
      '6-10 SCREENS',
      '11-15 SCREENS',
      '16-20 SCREENS',
      '21-25 SCREENS',
      'ABOVE 25 SCREENS',
    ];

    List<IconData> iconList = [
      //TODO: Make a loop so that the icondata will be declared once
      Icons.file_copy,
      Icons.file_copy,
      Icons.file_copy,
      Icons.file_copy,
      Icons.file_copy,
      Icons.file_copy,
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
      ),
      body: MobileApplicationCanvasOption(
        title: NumberOfDisplayScreenTitle,
        subtitle: '(select any one option)',
        mainButtonTitle: 'Next',
        onMainButtonTapped: () {
          Navigator.of(context).pushNamed(TypeOfAuthenticationScreen.routeName);
        },
        isSelected: isSelected,
        details: details,
        iconList: iconList,
      ),
    );
  }
}
