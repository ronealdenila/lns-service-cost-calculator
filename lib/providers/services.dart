import 'package:flutter/cupertino.dart';
import 'package:lns_service_cost_calculator/dummy_data.dart';
import 'service.dart';

class Services with ChangeNotifier {
  List<Service> _items = serviceDummyData;

  List<Service> get items {
    return [..._items];
  }

  Service findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }


}
