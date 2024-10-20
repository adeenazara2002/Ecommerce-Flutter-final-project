import 'package:ecommerce_flutter_project/Screens/Splash/splash.dart';
import 'package:ecommerce_flutter_project/Screens/profile/profileView.dart';
import 'package:ecommerce_flutter_project/app/app.locator.dart';
import 'package:ecommerce_flutter_project/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator(); // Initialize Stacked services
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.bottomNavigationView, // Use generated route
      onGenerateRoute: StackedRouter().onGenerateRoute, // Use StackedRouter
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
