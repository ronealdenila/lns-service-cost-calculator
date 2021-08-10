import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/constants/app_strings.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/features_screen.dart';
import 'package:lns_service_cost_calculator/widgets/mobile_application_canvas_option.dart';

class TypeOfAuthenticationScreen extends StatelessWidget {
  static const routeName = '/type-of-authentication-option';

  // must be stored globally since pag rebuild ani will returned in false
  final List<bool> isSelected = [
    false,
    false,
    false,
    false,
  ];
  final List<IconData> iconList = [
    Icons.email,
    Icons.groups,
    Icons.phonelink_setup,
    Icons.person_add_disabled,
  ];
  final List<String> details = [
    'EMAIL',
    'SOCIAL MEDIA',
    'PHONE OTP',
    'USERS ARE NOT REQUIRED TO AUTHENTICATE',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
      ),
      body: MobileApplicationCanvasOption(
        title: TypeOfAuthenticationTitle,
        subtitle: '(select atleast one option)',
        mainButtonTitle: 'Next',
        onMainButtonTapped: () {
          Navigator.of(context).pushNamed(FeaturesScreen.routeName);
        },
        isSelected: isSelected,
        details: details,
        iconList: iconList,
      ),
    );
    ;
  }
}
