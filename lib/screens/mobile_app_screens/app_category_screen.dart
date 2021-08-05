import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/app_category_item.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';

class AppCategoryScreen extends StatefulWidget {
  static const routeName = '/app-category-screen-option';

  @override
  _AppCategoryScreenState createState() => _AppCategoryScreenState();
}

class _AppCategoryScreenState extends State<AppCategoryScreen> {
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
                  children: [
                    //TODO: Make a model instead of hard coded data
                    AppCategoryItem(
                      title: 'SERVICE APP',
                      icon: Icons.construction,
                    ),
                    AppCategoryItem(
                      title: 'BOOKING APP',
                      icon: Icons.airplanemode_on_outlined,
                    ),
                    AppCategoryItem(
                      title: 'SOCIAL NETWORKING APP',
                      icon: Icons.people,
                    ),
                    AppCategoryItem(
                      title: 'E-COMMERCE APP',
                      icon: Icons.shopping_cart,
                    ),
                    AppCategoryItem(
                      title: 'EDUCATION AND E-LEARNING APP',
                      icon: Icons.book,
                    ),
                    AppCategoryItem(
                      title: 'BANK APP',
                      icon: Icons.comment_bank,
                    ),
                  ],
                  shrinkWrap: true,
                ),
              ],
            ),
            BoxButton(title: 'Next'),
          ],
        ),
      ),
    );
  }
}
