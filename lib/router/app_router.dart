import 'package:flutter/material.dart';
import 'package:anyar_retail/screens/dashboard_page.dart';
import 'package:anyar_retail/screens/login_page.dart';
import 'package:anyar_retail/splash/splash_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Page Not Found!'),
        ),
        body: const Center(
          child: Text('Error 404!'),
        ),
      ),
    );
  }
}