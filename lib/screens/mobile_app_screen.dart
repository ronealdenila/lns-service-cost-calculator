import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:lns_service_cost_calculator/providers/lns_api.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_pages/type_of_app_screen.dart';

import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';

import 'mobile_app_pages/app_category_screen.dart';
import 'mobile_app_pages/authentication_type_screen.dart';
import 'confirmation_screen.dart';
import 'mobile_app_pages/display_number_screen.dart';
import 'mobile_app_pages/features_screen.dart';

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

  void onNextPage() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    setState(() {
      _currentIndex = _pageController.page!.round() + 1;
    });
  }

  //TODO: Method for checking if the user choosen card/checkbox is null
  void nextPage() {
    switch (_currentIndex) {
      case 0:
        print('Function for checking type of app checkbox');
        onNextPage();
        break;
      case 1:
        print('Function for checking if there is category card selected');
        onNextPage();
        break;
      case 2:
        print('Function for checking if there is screen card selected');
        onNextPage();
        break;
      case 3:
        print(
            'Function for checking if there is type of authentication card selected');
        onNextPage();
        break;
      case 4:
        print('Function for checking if there is feauture card selected');
        Navigator.of(context).pushNamed(ConfirmationPage.routeName);
        break;
      default:
    }
  }

  void checkBoxValidation() {
    final appProvider = Provider.of<AppProvider>(context, listen: false);
    final loadedServiceType = appProvider.findById('s1');
    print(loadedServiceType.appType);
  }

  void checkifLastPage(int currentIndex) {
    if (currentIndex == 4) {
      setState(() {
        isLastPage = true;
        print('isLastPage? $isLastPage');
      });
    } else {
      setState(() {
        isLastPage = false;
        print('isLastPage? $isLastPage');
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

  _onPageViewChange(int page) {
    print("Current Page: " + page.toString());
    int previousPage = page;
    if (page != 0)
      previousPage--;
    else
      previousPage = 2;
    print("Previous page: $previousPage");
    checkifLastPage(page);
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
                onPageChanged: _onPageViewChange,
                physics: new NeverScrollableScrollPhysics(),
                children: [
                  TypeOfAppPage(),
                  AppCategoryPage(),
                  DisplayNumberPage(),
                  AuthenticationTypePage(),
                  FeaturesPage(),
                  // ConfirmationPage(),
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
                    dotsCount: 5,
                    decorator: DotsDecorator(
                      spacing: EdgeInsets.all(10),
                      color: kcPrimaryShadeColor,
                      activeColor: kcPrimaryColor,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    position: _currentIndex!.toDouble(),
                  ),
                  BoxButton(
                      title: isLastPage! ? 'PROCEED' : 'NEXT', onTap: nextPage),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
