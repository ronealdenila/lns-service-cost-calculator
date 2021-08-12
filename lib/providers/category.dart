import 'package:flutter/material.dart';

class Category with ChangeNotifier {
  final String? id;
  final String? title;
  final int? price;
  final IconData? icon;
  bool isSelected;

  Category({
    required this.id,
    required this.title,
    required this.price,
    required this.icon,
    this.isSelected = false,
  });

  Set active = {};

  void toggleCardSelection() {
    isSelected = !isSelected;
    print(isSelected);
    notifyListeners();
  }
}
// Logic for selecting only one card
//     for (int indexBtn = 0;
//         indexBtn < widget.isSelected!.length;
//         indexBtn++) {
//       if (indexBtn == index) {
//         widget.isSelected![indexBtn] = true;
//         // print('Category ${details[indexBtn]} is selected');
//       } else {
//         widget.isSelected![indexBtn] = false;
//       }
