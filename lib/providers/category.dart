import 'package:flutter/cupertino.dart';

class Category with ChangeNotifier {
  final String? id;
  final String? title;
  final int? price;
  bool isSelected;

  Category({
    this.id,
    this.title,
    this.price,
    this.isSelected = false,
  });
}
