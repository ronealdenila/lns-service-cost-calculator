import 'package:flutter/material.dart';

class NumberOfDisplayScreen extends StatelessWidget {
  static const routeName = '/number-of-display-option';

  const NumberOfDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Number of Display Screen'),),
    );
  }
}
