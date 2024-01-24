import 'package:flutter/material.dart';
import 'package:onboarding_screen/Utils/theme.dart';
import 'Routes/app_navigation.dart';
import 'Routes/app_navigation_routes.dart';
import 'Routes/route_generator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: AppNavRoutes.initialRoute,
      navigatorKey: AppNavigation.navigationKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
