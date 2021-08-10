import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/app_category_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/features_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/number_of_display_screen.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/type_of_authentication_screen.dart';
import 'package:lns_service_cost_calculator/shared/app_colors.dart';

import './providers/auth.dart';
import './providers/services.dart';

import 'package:provider/provider.dart';

import './screens/service_type_screen.dart';
import './screens/splash_screen.dart';
import './screens/on_boarding_screen.dart';
import 'screens/mobile_app_screens/type_of_app_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Services(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(backgroundColor: kcPrimaryColor),
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, userSnapshot) {
            if (userSnapshot.connectionState == ConnectionState.waiting) {
              return SplashScreen();
            }
            if (userSnapshot.hasData) {
              return ServiceTypeScreen();
            }
            return OnBoardingScreen();
          },
        ),
        routes: {
          ServiceTypeScreen.routeName: (ctx) => ServiceTypeScreen(),
          TypeOfAppScreen.routeName: (ctx) => TypeOfAppScreen(),
          AppCategoryScreen.routeName: (ctx) => AppCategoryScreen(),
          NumberOfDisplayScreen.routeName: (ctx) => NumberOfDisplayScreen(),
          TypeOfAuthenticationScreen.routeName: (ctx) =>
              TypeOfAuthenticationScreen(),
          FeaturesScreen.routeName: (ctx) => FeaturesScreen(),
        },
      ),
    );
  }
}
