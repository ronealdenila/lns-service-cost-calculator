import 'package:flutter/foundation.dart';

class Service with ChangeNotifier {
  final String? id;
  final String? title;
  final String? image;

  Service({this.id, this.title, this.image});
}
