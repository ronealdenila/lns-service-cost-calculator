import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  static const routeName = 'confirmation-option';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
      ),
      body: Text('Almost There!'),
    );
  }
}
