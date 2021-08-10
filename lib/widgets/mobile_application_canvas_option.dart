import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/providers/categories.dart';
import 'package:lns_service_cost_calculator/providers/category.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';
import 'package:lns_service_cost_calculator/shared/ui_helpers.dart';
import 'package:lns_service_cost_calculator/widgets/box_button.dart';
import 'package:lns_service_cost_calculator/widgets/box_text.dart';
import 'package:provider/provider.dart';

class MobileApplicationCanvasOption extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? mainButtonTitle;
  final String? validationMessage;
  final Widget? grid;
  final void Function()? onMainButtonTapped;

  const MobileApplicationCanvasOption({
    Key? key,
    this.title,
    this.subtitle,
    this.mainButtonTitle,
    this.validationMessage,
    this.grid,
    this.onMainButtonTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          grid!,
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

class CardGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Rebuilding card item');
    final categoriesData = Provider.of<Categories>(context);
    final categories = categoriesData.items;
    return SizedBox(
      height: 250,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: categories.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: categories[i],
          child: CategoryTypeItem(),
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

// OLD CODE
// Gridview is extracted to stateful so that this wil be the only one to get rebuild
// class CardItem extends StatefulWidget {
//   const CardItem({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _CardItemState createState() => _CardItemState();
// }

// class _CardItemState extends State<CardItem> {
//   @override
//   Widget build(BuildContext context) {
//     print('Rebuilding card item');
//     return SizedBox(
//       height: 250,
//       child: GridView.count(
//         crossAxisCount: 3,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         children: List.generate(
//           widget.isSelected!.length,
//           (index) {
//             return InkWell(
//               onTap: () {
//                 setState(() {
//                   for (int indexBtn = 0;
//                       indexBtn < widget.isSelected!.length;
//                       indexBtn++) {
//                     if (indexBtn == index) {
//                       widget.isSelected![indexBtn] = true;
//                       // print('Category ${details[indexBtn]} is selected');
//                     } else {
//                       widget.isSelected![indexBtn] = false;
//                     }
//                   }
//                 });
//               },
//               child: Card(
//                 color:
//                     //set the background color of the button when it is selected/ not selected
//                     widget.isSelected![index] ? kcPrimaryColor : Colors.white,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(widget.iconList![index],
//                         //set the color of the icon when it is selected/ not selected
//                         color: widget.isSelected![index]
//                             ? Colors.white
//                             : Colors.black),
//                     verticalSpaceRegular,
//                     BoxText.caption(
//                       widget.details![index],
//                       color: widget.isSelected![index]
//                           ? Colors.white
//                           : Colors.black,
//                       align: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//         shrinkWrap: true,
//       ),
//     );
//   }
// }
