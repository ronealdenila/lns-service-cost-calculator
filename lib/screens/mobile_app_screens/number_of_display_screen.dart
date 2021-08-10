import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/shared/app_colors.dart';
import '/shared/ui_helpers.dart';

import '/constants/app_strings.dart';

import '/providers/category.dart';
import '/providers/displayScreens.dart';

import '/widgets/box_text.dart';
import '/widgets/mobile_application_canvas_option.dart';

class NumberOfDisplayScreen extends StatelessWidget {
  static const routeName = '/number-of-display-option';

  @override
  Widget build(BuildContext context) {
    final displayScreenData = Provider.of<DisplayScreens>(context);
    final displayScreens = displayScreenData.items;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: CupertinoNavigationBarBackButton(
          color: Colors.black,
        ),
      ),
      body: MobileApplicationCanvasOption(
        title: NumberOfDisplayScreenTitle,
        subtitle: '(select any one option)',
        mainButtonTitle: 'Next',
        onMainButtonTapped: () {
          // Navigator.of(context).pushNamed(TypeOfAuthenticationScreen.routeName);
        },
        grid: SizedBox(
          height: 250,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: displayScreens.length,
            itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: displayScreens[i],
              child: CategoryTypeItem(),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryTypeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryItem = Provider.of<Category>(context);
    return InkWell(
      onTap: () {
        categoryItem.toggleCardSelection();
      },
      child: Card(
        color:
            //set the background color of the button when it is selected/ not selected
            categoryItem.isSelected ? kcPrimaryColor : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              categoryItem.icon!,
              color: categoryItem.isSelected ? Colors.white : Colors.black,
            ),
            verticalSpaceRegular,
            BoxText.caption(
              categoryItem.title!,
              align: TextAlign.center,
              color: categoryItem.isSelected ? Colors.white : Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
