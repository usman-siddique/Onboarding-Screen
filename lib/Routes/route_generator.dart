import 'package:flutter/material.dart';
import '../Screens/Home/home_screen.dart';
import '../Screens/Onboarding/onboarding_screen.dart';
import 'app_navigation_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppNavRoutes.initialRoute:
        return routeScreen(child: const OnboardingScreen());
      case AppNavRoutes.homeScreen:
        return routeScreen(child: const HomeScreen());

      //DEFAULT CASE
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Text('asd');
    });
  }

  static Route<dynamic> routeScreen(
      {Widget? child, bool fullscreenDialog = false}) {
    return MaterialPageRoute(
      builder: (context) => SafeArea(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: child!,
        ),
      ),
    );
  }
}
