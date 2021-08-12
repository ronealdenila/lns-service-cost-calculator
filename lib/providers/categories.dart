import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/dummy_data.dart';
import 'package:lns_service_cost_calculator/providers/category.dart';

class Categories with ChangeNotifier {
  List<Category> _items = categoryDummyData;

  List<Category> get items {
    return [..._items];
  }

  void toggleSingleCardSelection(int index) {
    for (int indexBtn = 0; indexBtn < _items.length; indexBtn++) {
      if (indexBtn == index) {
        _items[indexBtn].isSelected = true;
        print('Item ${_items[indexBtn].title} is selected ');
      } else {
        _items[indexBtn].isSelected = false;
      }
    }
    notifyListeners();
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
}
