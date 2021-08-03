import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/constants/app_strings.dart';
import 'package:lns_service_cost_calculator/providers/auth.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';

import 'package:provider/provider.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final appState = context.read<Auth>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoxText.headline('WELCOME TO LNS SERVICE COST CALCULATOR',
                      align: TextAlign.center),
                  verticalSpaceLarge,
                  BoxText.body(OnBoardingScreenDescription),
                ],
              ),
            ),
            BoxButton(
              title: 'Get Started',
              onTap: appState.signInAnonymously,
            ),
          ],
        ),
      ),
    );
  }
}



  // Example code of how to sign in anonymously.
