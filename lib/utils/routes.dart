import 'package:flutter/material.dart';
import '../errors/exception.dart';
import '../pages/change_password_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/signup_page.dart';

class RouteGenerator {
  static const String login = 'login';
  static const String signup = 'signup';
  static const String changePassword = 'changePassword';
  static const String home = 'home';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => SignupPage());
      // case home:
      //   return MaterialPageRoute(builder: (_) => const HomePage());
      case changePassword:
        return MaterialPageRoute(builder: (_) => ChangePasswordPage());
      default:
        throw RouteException('Route not found');
    }
  }
}
