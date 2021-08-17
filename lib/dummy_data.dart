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
      AppTypeModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      AppTypeModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.airplay,
      ),
      AppTypeModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      AppTypeModel(
        title: 'Service app',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      AppTypeModel(
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
      AppTypeModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      AppTypeModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.ios_share,
      ),
      AppTypeModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      AppTypeModel(
        title: 'Service app',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      AppTypeModel(
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
      AppTypeModel(
        title: 'Android App',
        description: '10 DAYS',
        icon: Icons.android,
      ),
      AppTypeModel(
        title: 'iOS App',
        description: '15 DAYS',
        icon: Icons.airplay,
      ),
      AppTypeModel(
        title: 'All of the above',
        description: '30 DAYS',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      AppTypeModel(
        title: 'SERVICE APP',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      AppTypeModel(
        title: 'BOOKING APP',
        description: 'Booking app description',
        icon: Icons.airplanemode_on_outlined,
      ),
      AppTypeModel(
        title: 'SOCIAL NETWORKING APP',
        description: 'social networking description',
        icon: Icons.people,
      ),
      AppTypeModel(
        title: 'E-COMMERCE APP',
        description: 'e-commerce description',
        icon: Icons.shopping_cart,
      ),
      AppTypeModel(
        title: 'EDUCATION AND E-LEARNING APP',
        description: 'education and e-learning description',
        icon: Icons.book,
      ),
      AppTypeModel(
        title: 'BANK APP',
        description: 'Bank app description',
        icon: Icons.account_balance,
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
    appAuthType: [
      AuthenticationTypeModel(
        title: 'EMAIL',
        description: '2 DAYS',
        icon: Icons.email,
      ),
      AuthenticationTypeModel(
        title: 'SOCIAL MEDIA',
        description: '3 DAYS',
        icon: Icons.groups,
      ),
      AuthenticationTypeModel(
        title: 'PHONE OTP',
        description: '6 DAYS',
        icon: Icons.settings_applications,
      ),
      AuthenticationTypeModel(
          title: 'USERS ARE NOT REQUIRED TO LOGIN/REGISTER',
          description: '0 DAYS',
          icon: Icons.person_remove),
    ],
    appFeatures: [
      FeaturesModel(
        title: 'IN APP PAYMENT',
        description: '2 DAYS',
        icon: Icons.credit_card,
      ),
      FeaturesModel(
        title: 'MAPS AND GEO-LOCATION',
        description: '3 DAYS',
        icon: Icons.map
      ),
      FeaturesModel(
        title: 'PAYMENT GETWAY INTEGRATION',
        description: '6 DAYS',
        icon: Icons.payments,
      ),
      FeaturesModel(
        title: 'PUSH NOTIFICATION',
        description: '7 DAYS',
        icon: Icons.notifications_active
      ),
      FeaturesModel(
        title: 'MULTI-LANGUAGE',
        description: '5 DAYS',
        icon: Icons.translate,
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
      AppTypeModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      AppTypeModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.ios_share,
      ),
      AppTypeModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      AppTypeModel(
        title: 'Service app',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      AppTypeModel(
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
      AppTypeModel(
        title: 'Android App',
        description: 'Mobile App Efforts',
        icon: Icons.android,
      ),
      AppTypeModel(
        title: 'iOS App',
        description: 'iOS App Effort',
        icon: Icons.ios_share,
      ),
      AppTypeModel(
        title: 'All of the above',
        description: 'Multi-platform Efforts',
        icon: Icons.flutter_dash,
      ),
    ],
    appCategory: [
      AppTypeModel(
        title: 'Service app',
        description: 'Service app description',
        icon: Icons.construction,
      ),
      AppTypeModel(
        title: 'Booking App',
        description: 'Booking app description',
        icon: Icons.airplanemode_on_outlined,
      ),
    ],
  ),
];
