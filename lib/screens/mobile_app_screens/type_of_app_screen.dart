import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/app_category_screen.dart';
import 'package:provider/provider.dart';

import '/providers/lns_api.dart';

import '/shared/ui_helpers.dart';

import '/constants/app_strings.dart';

import '/widgets/box_button.dart';
import '/widgets/box_text.dart';

class TypeOfAppScreen extends StatelessWidget {
  static const routeName = '/type-of-app-option';

  final _form = GlobalKey<FormState>();

  // Future<void> _saveTypeofApp() async {
  //   _form.currentState!.save();
  //   print(_androidOption);
  //   print(_iOSOption);
  //   if (_androidOption == false && _iOSOption == false) {
  //     showDialog(
  //       context: context,
  //       builder: (ctx) => AlertDialog(
  //         title: Text('An error Occured'),
  //         content: Text('Please Choose atleast on of type of app.'),
  //         actions: [
  //           TextButton(
  //             child: Text('Okay'),
  //             onPressed: () {
  //               Navigator.of(ctx).pop();
  //             },
  //           )
  //         ],
  //       ),
  //     );
  //   } else {
  //     Navigator.of(context).pushNamed(AppCategoryScreen.routeName);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final serviceTypeId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedServiceType =
        context.read<AppProvider>().findById(serviceTypeId);

    return Scaffold(
      appBar: AppBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                BoxText.headingThree(
                  'YOU HAVE CHOOSEN',
                  align: TextAlign.center,
                ),
                verticalSpaceMedium,
                BoxText.headline(
                  loadedServiceType.title!,
                  align: TextAlign.center,
                ),
                verticalSpaceRegular,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: BoxText.caption(
                    MobileAppCategoryDescription,
                    align: TextAlign.center,
                  ),
                ),
                verticalSpaceLarge,
                BoxText.body(
                  'What type of app are you building?',
                  align: TextAlign.center,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: loadedServiceType.appType!.length,
                    itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                      value: loadedServiceType.appType![i],
                      child: CheckboxListTile(
                        value: loadedServiceType.appType![i].isSelected,
                        title: Text('${loadedServiceType.appType![i].title}'),
                        onChanged: (value) {
                          //TODO: Make it clickable and store the value globally
                        },
                      ),
                    ),
                  ),
                ),
                BoxButton(
                  title: 'Next',
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      AppCategoryScreen.routeName,
                      arguments: serviceTypeId,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
