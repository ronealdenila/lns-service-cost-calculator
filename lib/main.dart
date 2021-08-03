
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import './providers/auth.dart';
import './providers/services.dart';

import 'package:provider/provider.dart';

import './screens/service_type_screen.dart';
import './screens/splash_screen.dart';
import './screens/on_boarding_screen.dart';
import 'screens/mobile_app_category_screen.dart';

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
        theme: ThemeData(
          primarySwatch: Colors.blue,
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
          MobileAppCategoryScreen.routeName: (ctx) => MobileAppCategoryScreen(),
        },
      ),
    );
  }
}
