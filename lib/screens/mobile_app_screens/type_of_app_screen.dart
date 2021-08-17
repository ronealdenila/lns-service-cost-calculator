import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/app_category_screen.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/widgets/custom_dots_indicator.dart';
import 'package:provider/provider.dart';

import 'package:dots_indicator/dots_indicator.dart';

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
    final appProvider = Provider.of<AppProvider>(context);

    final loadedServiceType = appProvider.findById(serviceTypeId);

    return Padding(
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
                height: 200,
                child: ListView.builder(
                  itemCount: loadedServiceType.appType!.length,
                  itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
                    value: loadedServiceType.appType![index],
                    child: Consumer<AppTypeModel>(
                      builder: (_, bar, __) => CheckboxListTile(
                        value: bar.isSelected,
                        title:
                            Text('${loadedServiceType.appType![index].title}'),
                        onChanged: (value) {
                          appProvider.toggleCheckBox(value!, bar, index);
                        },
                        activeColor: kcSecondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
