import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/dummy_data.dart';

class ServiceTypeModel with ChangeNotifier {
  // final String? image;
  final String id;
  final IconData? icon;
  final String? title;
  final String? description;
  final double? price;
  final List<AppTypeModel>? appType;
  final List<AppTypeModel>? appCategory;
  final List<DisplayScreenModel>? appScreen;
  final List<AuthenticationTypeModel>? appAuthType;
  final List<FeaturesModel>? appFeatures;

  ServiceTypeModel({
    required this.id,
    required this.icon,
    required this.title,
    required this.description,
    required this.price,
    this.appType,
    this.appCategory,
    this.appScreen,
    this.appAuthType,
    this.appFeatures,
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

class AppTypeModel with ChangeNotifier {
  final String? title;
  final String? description;
  final IconData? icon;
  bool? isSelected;

  AppTypeModel({
    required this.title,
    required this.description,
    required this.icon,
    this.isSelected = false,
  });
}

class AuthenticationTypeModel with ChangeNotifier {
  final String? title;
  final String? description;
  final IconData? icon;
  bool? isSelected;

  AuthenticationTypeModel({
    required this.title,
    required this.description,
    required this.icon,
    this.isSelected = false,
  });
}

class FeaturesModel with ChangeNotifier {
  final String? title;
  final String? description;
  final IconData? icon;
  bool? isSelected;

  FeaturesModel({
    required this.title,
    required this.description,
    required this.icon,
    this.isSelected = false,
  });
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

  void toggleMultipleCardSelection(dynamic items, int index) {
    items.isSelected = !items.isSelected!;
    print(index);
    if (index == 3) {
      print('Must unselected the previous index');
    }
    notifyListeners();
  }

  void toggleCheckBox(bool value, AppTypeModel items, int index) {
    items.isSelected = value;
    notifyListeners();
  }
}
