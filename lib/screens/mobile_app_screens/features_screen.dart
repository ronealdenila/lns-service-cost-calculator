import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturesScreen extends StatelessWidget {
  static const routeName = '/features-option';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Text('Features Screen'),
      ),
    );
  }
}
