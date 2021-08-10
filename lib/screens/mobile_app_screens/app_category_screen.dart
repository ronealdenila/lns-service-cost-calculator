import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/number_of_display_screen.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';

class AppCategoryScreen extends StatefulWidget {
  static const routeName = '/app-category-screen-option';

  @override
  _AppCategoryScreenState createState() => _AppCategoryScreenState();
}

class _AppCategoryScreenState extends State<AppCategoryScreen> {
  // must be stored globally since pag rebuild ani will returned in false
  List<bool> isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<IconData> iconList = [
    Icons.construction,
    Icons.airplanemode_on_outlined,
    Icons.people,
    Icons.shopping_cart,
    Icons.book,
    Icons.tune,
  ];
  List<String> details = [
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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                BoxText.headingThree(
                  'Which category best describes your App?',
                  align: TextAlign.center,
                ),
                verticalSpaceSmall,
                BoxText.caption(
                  '(select any one option)',
                  align: TextAlign.center,
                ),
                verticalSpaceRegular,
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  // childAspectRatio: 1,
                  children: List.generate(
                    isSelected.length,
                    (index) {
                      return InkWell(
                        // splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          setState(() {
                            for (int indexBtn = 0;
                                indexBtn < isSelected.length;
                                indexBtn++) {
                              if (indexBtn == index) {
                                isSelected[indexBtn] = true;
                                print(
                                    'Category ${details[indexBtn]} is selected');
                              } else {
                                isSelected[indexBtn] = false;
                              }
                            }
                          });
                        },
                        //TODO: Enhance card design
                        child: Card(
                          color:
                              //set the background color of the button when it is selected/ not selected
                              isSelected[index]
                                  ? Color(0xff065C0D)
                                  : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(iconList[index],
                                  //set the color of the icon when it is selected/ not selected
                                  color: isSelected[index]
                                      ? Colors.white
                                      : Colors.black),
                              verticalSpaceRegular,
                              Text(
                                details[index],
                                style: TextStyle(
                                    color: isSelected[index]
                                        ? Colors.white
                                        : Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  shrinkWrap: true,
                ),
              ],
            ),
            BoxButton(
              title: 'Next',
              onTap: () {
                Navigator.of(context)
                    .pushNamed(NumberOfDisplayScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
