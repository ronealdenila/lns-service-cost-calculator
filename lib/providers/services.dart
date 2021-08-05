import 'package:flutter/cupertino.dart';
import 'service.dart';

class Services with ChangeNotifier {
  List<Service> _items = [
    Service(
      id: 's1',
      title: 'Digital Marketing & Consultation',
      image: 'assets/images/digital_marketing_consultation.jpg',
    ),
    Service(
      id: 's2',
      title: 'Customized System Development',
      image: 'assets/images/system_development.jpg',
    ),
    Service(
      id: 's3',
      title: 'Mobile Application Development',
      image: 'assets/images/mobile_app_development.jpg',
    ),
    Service(
      id: 's4',
      title: 'Domain Name and Web Hosting',
      image: 'assets/images/web_hosting.jpg',
    ),
    Service(
      id: 's5',
      title: 'E-Commerce Store Development',
      image: 'assets/images/e_commerce_store_development.jpg',
    ),
  ];

  List<Service> get items {
    return [..._items];
  }

  Service findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
