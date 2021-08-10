import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';

class MobileApplicationCanvasOption extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? mainButtonTitle;
  final String? validationMessage;
  final void Function()? onMainButtonTapped;
  final List<bool>? isSelected;
  final List<String>? details;
  final List<IconData>? iconList;

  const MobileApplicationCanvasOption({
    Key? key,
    this.title,
    this.subtitle,
    this.mainButtonTitle,
    this.validationMessage,
    this.onMainButtonTapped,
    this.isSelected,
    this.details,
    this.iconList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Rebuilding mobile applcation canvas option');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          verticalSpaceRegular,
          BoxText.headingThree(
            title!,
            align: TextAlign.center,
          ),
          verticalSpaceSmall,
          BoxText.caption(
            subtitle!,
            align: TextAlign.center,
          ),
          if (validationMessage != null)
            BoxText.body(
              validationMessage!,
              color: Colors.red,
            ),
          verticalSpaceRegular,
          CardItem(
            isSelected: isSelected,
            details: details,
            iconList: iconList,
          ),
          if (validationMessage != null) verticalSpaceRegular,
          BoxButton(
            title: mainButtonTitle!,
            onTap: onMainButtonTapped,
          )
        ],
      ),
    );
  }
}

// Gridview is extracted to stateful so that this wil be the only one to get rebuild
class CardItem extends StatefulWidget {
  final List<bool>? isSelected;
  final List<String>? details;
  final List<IconData>? iconList;
  const CardItem({
    Key? key,
    required this.isSelected,
    required this.details,
    required this.iconList,
  }) : super(key: key);

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    print('Rebuilding card item');
    return SizedBox(
      height: 250,
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          widget.isSelected!.length,
          (index) {
            return InkWell(
              onTap: () {
                setState(() {
                  for (int indexBtn = 0;
                      indexBtn < widget.isSelected!.length;
                      indexBtn++) {
                    if (indexBtn == index) {
                      widget.isSelected![indexBtn] = true;
                      // print('Category ${details[indexBtn]} is selected');
                    } else {
                      widget.isSelected![indexBtn] = false;
                    }
                  }
                });
              },
              child: Card(
                color:
                    //set the background color of the button when it is selected/ not selected
                    widget.isSelected![index] ? kcPrimaryColor : Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(widget.iconList![index],
                        //set the color of the icon when it is selected/ not selected
                        color: widget.isSelected![index]
                            ? Colors.white
                            : Colors.black),
                    verticalSpaceRegular,
                    Text(
                      widget.details![index],
                      style: TextStyle(
                          color: widget.isSelected![index]
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
    );
  }
}
