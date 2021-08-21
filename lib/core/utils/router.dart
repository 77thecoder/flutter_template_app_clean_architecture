
import 'package:amur/core/utils/constants.dart';
import 'package:amur/presentation/login/login_page.dart';
import 'package:amur/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_SPLASH:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case ROUTE_LOGIN:
        return MaterialPageRoute(builder: (_) => LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
