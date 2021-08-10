import 'package:flutter/material.dart';

import '/dummy_data.dart';
import '/providers/category.dart';

class DisplayScreens with ChangeNotifier {
  List<Category> _items = screensOptionDummyData;

  List<Category> get items {
    return [..._items];
  }
}
