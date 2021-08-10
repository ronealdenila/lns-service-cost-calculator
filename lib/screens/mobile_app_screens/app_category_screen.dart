import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/number_of_display_screen.dart';
import 'package:lns_service_cost_calculator/widgets/mobile_application_canvas_option.dart';

class AppCategoryScreen extends StatelessWidget {
  static const routeName = '/app-category-screen-option';

  // must be stored globally since pag rebuild ani will returned in false
  final List<bool> isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<IconData> iconList = [
    Icons.construction,
    Icons.airplanemode_on_outlined,
    Icons.people,
    Icons.shopping_cart,
    Icons.book,
    Icons.account_balance,
  ];
  final List<String> details = [
    'SERVICE APP',
    'BOOKING APP',
    'SOCAL NETWORKING APP',
    'E-COMMERCE APP',
    'EDUCATION AND E-LEARNING APP',
    'BANK APP',
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
        title: 'Which category best describes your App?',
        subtitle: '(select any one option)',
        mainButtonTitle: 'Next',
        onMainButtonTapped: () {
          Navigator.of(context).pushNamed(NumberOfDisplayScreen.routeName);
        },
        isSelected: isSelected,
        details: details,
        iconList: iconList,
      ),
    );
  }
}
