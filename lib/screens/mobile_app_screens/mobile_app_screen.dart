import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/app_category_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/authentication_type_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/confirmation_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/display_number_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/features_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/result_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/type_of_app_screen.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';

class MobileAppScreen extends StatefulWidget {
  static const routeName = 'mobile-app-option';
  const MobileAppScreen({Key? key}) : super(key: key);

  @override
  _MobileAppScreenState createState() => _MobileAppScreenState();
}

class _MobileAppScreenState extends State<MobileAppScreen> {
  int? _currentIndex = 0;
  bool? isLastPage = false;
  final _pageController = PageController(initialPage: 0);

  void nextPage() {
    // checkifLastPage(_currentIndex!);
    if (_currentIndex! < 5) {
      isLastPage = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      setState(() {
        _currentIndex = _pageController.page!.round() + 1;
        print(_currentIndex);
      });
    } else {
      Navigator.of(context).pushNamed(ResultScreen.routeName);
    }
  }

  void checkifLastPage(int currentIndex) {
    if (currentIndex == 4) {
      setState(() {
        isLastPage = true;
      });
    } else {
      setState(() {
        isLastPage = false;
      });
    }
  }

  void previousPage() {
    if (_currentIndex == 0) {
      Navigator.of(context).pop();
    } else {
      _pageController.previousPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      setState(() {
        _currentIndex = _pageController.page!.round() - 1;
        print(_currentIndex);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: CupertinoNavigationBarBackButton(
            color: Colors.black,
            onPressed: previousPage,
          ),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .6,
              child: PageView(
                controller: _pageController,
                physics: new NeverScrollableScrollPhysics(),
                children: [
                  TypeOfAppScreen(),
                  AppCategoryScreen(),
                  DisplayNumberScreen(),
                  AuthenticationTypeScreen(),
                  FeaturesScreen(),
                  ConfirmationScreen(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * .2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DotsIndicator(
                    dotsCount: 6,
                    decorator: DotsDecorator(
                      spacing: EdgeInsets.all(10),
                      color: kcPrimaryShadeColor,
                      activeColor: kcPrimaryColor,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    //TODO: MUST STOP ON LAST INDEX
                    position: _currentIndex!.toDouble(),
                  ),
                  BoxButton(
                      title: isLastPage! ? 'PROCEED' : 'NEXT', onTap: nextPage)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
