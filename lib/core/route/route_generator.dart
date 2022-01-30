
import 'package:flutter/material.dart';
import 'package:note/feature/auth/ui/login/login_screen.dart';
import 'package:note/feature/auth/ui/signup/signup_screen.dart';
import 'package:note/feature/auth/ui/splash/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/login': {
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      }
      case '/signup': {
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      }
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('No Route'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Sorry no route was found!',style: TextStyle(color: Colors.red, fontSize: 18.0),),
        ),
      );
    });
  }
}