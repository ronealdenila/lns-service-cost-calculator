import 'package:flutter/material.dart';
import 'package:lns_service_cost_calculator/providers/lns_api.dart';

final appDummyData = [
  ServiceTypeModel(
    id: 's1',
    icon: Icons.mobile_friendly,
    title: 'DIGITAL MARKETING & CONSULTATION',
    description: 'None',
    price: 200,
    appType: [
      ServiceTypeSubModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      ServiceTypeSubModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.ios_share,
      ),
      ServiceTypeSubModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      ServiceTypeSubModel(
        title: 'Service app',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      ServiceTypeSubModel(
        title: 'Booking App',
        description: 'Booking app description',
        icon: Icons.airplanemode_on_outlined,
      ),
    ],
  ),
  ServiceTypeModel(
    id: 's2',
    icon: Icons.mobile_friendly,
    title: 'CUSTOMIZED SYSTEM DEVELOPMENT',
    description: 'None',
    price: 200,
    appType: [
      ServiceTypeSubModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      ServiceTypeSubModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.ios_share,
      ),
      ServiceTypeSubModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      ServiceTypeSubModel(
        title: 'Service app',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      ServiceTypeSubModel(
        title: 'Booking App',
        description: 'Booking app description',
        icon: Icons.airplanemode_on_outlined,
      ),
    ],
  ),
  ServiceTypeModel(
    id: 's3',
    icon: Icons.mobile_friendly,
    title: 'MOBILE APPLICATION DEVELOPMENT',
    description: 'None',
    price: 200,
    appType: [
      ServiceTypeSubModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      ServiceTypeSubModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.ios_share,
      ),
      ServiceTypeSubModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      ServiceTypeSubModel(
        title: 'SERVICE APP',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      ServiceTypeSubModel(
        title: 'BOOKING APP',
        description: 'Booking app description',
        icon: Icons.airplanemode_on_outlined,
      ),
      ServiceTypeSubModel(
        title: 'SOCIAL NETWORKING APP',
        description: 'social networking description',
        icon: Icons.airplanemode_on_outlined,
      ),
      ServiceTypeSubModel(
        title: 'E-COMMERCE APP',
        description: 'e-commerce description',
        icon: Icons.airplanemode_on_outlined,
      ),
      ServiceTypeSubModel(
        title: 'EDUCATION AND E-LEARNING APP',
        description: 'education and e-learning description',
        icon: Icons.airplanemode_on_outlined,
      ),
      ServiceTypeSubModel(
        title: 'BANK APP',
        description: 'Bank app description',
        icon: Icons.airplanemode_on_outlined,
      ),
    ],
    appScreen: [
      DisplayScreenModel(
        title: '5 SCREENS',
        description: '5 DAYS',
        icon: Icons.file_copy,
      ),
      DisplayScreenModel(
        title: '6-10 screens',
        description: '10 DAYS',
        icon: Icons.file_copy,
      ),
      DisplayScreenModel(
        title: '11-15',
        description: '15 DAYS',
        icon: Icons.file_copy,
      ),
      DisplayScreenModel(
        title: '16-20 SCREENS',
        description: '20 DAYSn',
        icon: Icons.file_copy,
      ),
      DisplayScreenModel(
        title: '21-25 SCREENS',
        description: '25 DAYS',
        icon: Icons.file_copy,
      ),
      DisplayScreenModel(
        title: 'ABOVE 25 SCREENS',
        description: '30 DAYS +',
        icon: Icons.file_copy,
      ),
    ],
  ),
  ServiceTypeModel(
    id: 's4',
    icon: Icons.mobile_friendly,
    title: 'DOMAIN NAME AND WEB HOSTING',
    description: 'None',
    price: 200,
    appType: [
      ServiceTypeSubModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      ServiceTypeSubModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.ios_share,
      ),
      ServiceTypeSubModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      ServiceTypeSubModel(
        title: 'Service app',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      ServiceTypeSubModel(
        title: 'Booking App',
        description: 'Booking app description',
        icon: Icons.airplanemode_on_outlined,
      ),
    ],
  ),
  ServiceTypeModel(
    id: 's5',
    icon: Icons.mobile_friendly,
    title: 'E-COMMERCE STORE DEVELOPMENT',
    description: 'None',
    price: 200,
    appType: [
      ServiceTypeSubModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      ServiceTypeSubModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.ios_share,
      ),
      ServiceTypeSubModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      ServiceTypeSubModel(
        title: 'Service app',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      ServiceTypeSubModel(
        title: 'Booking App',
        description: 'Booking app description',
        icon: Icons.airplanemode_on_outlined,
      ),
    ],
  ),
];
