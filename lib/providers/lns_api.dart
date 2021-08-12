import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/dummy_data.dart';

class ServiceTypeModel with ChangeNotifier {
  // final String? image;
  final String id;
  final IconData? icon;
  final String? title;
  final String? description;
  final double? price;
  final List<ServiceTypeSubModel>? appType;
  final List<ServiceTypeSubModel>? appCategory;
  final List<DisplayScreenModel>? appScreen;

  ServiceTypeModel({
    required this.id,
    required this.icon,
    required this.title,
    required this.description,
    required this.price,
    this.appType,
    this.appCategory,
    this.appScreen,
  });
}

class DisplayScreenModel with ChangeNotifier {
  final String? title;
  final String? description;
  final IconData? icon;
  bool isSelected;

  DisplayScreenModel({
    required this.title,
    required this.description,
    required this.icon,
    this.isSelected = false,
  });
}

class ServiceTypeSubModel with ChangeNotifier {
  final String? title;
  final String? description;
  final IconData? icon;
  bool isSelected;

  ServiceTypeSubModel({
    required this.title,
    required this.description,
    required this.icon,
    this.isSelected = false,
  });

  void toggleSelection(bool value) {
    isSelected = value;
    print(isSelected);
    notifyListeners();
  }
}

class AppProvider with ChangeNotifier {
  List<ServiceTypeModel> _items = appDummyData;

  List<ServiceTypeModel> get items {
    return [..._items];
  }

  ServiceTypeModel findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void toggleSingleCardSelection(int index, dynamic items) {
    for (int indexBtn = 0; indexBtn < items.length; indexBtn++) {
      if (indexBtn == index) {
        items[indexBtn].isSelected = true;
        print('Item ${items[indexBtn].title} is selected');
      } else {
        items[indexBtn].isSelected = false;
      }
    }
    notifyListeners();
  }
}
