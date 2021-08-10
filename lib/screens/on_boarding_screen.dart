import 'package:flutter/material.dart';

import '/constants/app_strings.dart';
import '/providers/auth.dart';
import '/shared/ui_helpers.dart';

import '/widgets/box_button.dart';
import '/widgets/box_text.dart';

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
