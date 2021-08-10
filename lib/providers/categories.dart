import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/dummy_data.dart';
import 'package:lns_service_cost_calculator/providers/category.dart';

class Categories with ChangeNotifier {
  List<Category> _items = categoryDummyData;

  List<Category> get items {
    return [..._items];
  }
}
