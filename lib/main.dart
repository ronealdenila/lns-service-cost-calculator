import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lns_service_cost_calculator/providers/lns_api.dart';
import 'package:lns_service_cost_calculator/screens/mobile_app_screens/display_number_screen.dart';

import './providers/auth.dart';

import 'package:provider/provider.dart';

import '/screens/mobile_app_screens/confirmation_screen.dart';
import '/screens/mobile_app_screens/app_category_screen.dart';
import '/screens/mobile_app_screens/features_screen.dart';

import '/screens/service_type_screen.dart';
import '/screens/splash_screen.dart';
import '/screens/on_boarding_screen.dart';
import '/screens/mobile_app_screens/type_of_app_screen.dart';

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
          create: (ctx) => AppProvider(),
        ),
        // ChangeNotifierProvider(
        //   create: (ctx) => Categories(),
        // ),
        // ChangeNotifierProvider(
        //   create: (ctx) => DisplayScreens(),
        // ),
        // ChangeNotifierProvider(
        //   create: (ctx) => TypeOfApp(),
        // ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme:
              AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
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
          DisplayNumberScreen.routeName: (ctx) => DisplayNumberScreen(),
          FeaturesScreen.routeName: (ctx) => FeaturesScreen(),
          ConfirmationScreen.routeName: (ctx) => ConfirmationScreen(),
        },
      ),
    );
  }
}
