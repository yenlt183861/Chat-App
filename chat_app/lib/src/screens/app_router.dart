// ignore_for_file: constant_identifier_names

import 'package:chat_app/src/screens/barrel_screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String HOME_SCREEN = 'home';
  static const String REGISTER_SCREEN = 'register';
  static const String PHONE_REGISTER_SCREEN = 'phone_register';
  static const String VERIFY_PHONE_SCREEN = 'verify_phone';
  static const String LOGIN_SCREEN = 'login';
  static const String FORGET_PASSWORD_SCREEN = 'forget_password';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME_SCREEN:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case REGISTER_SCREEN:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case PHONE_REGISTER_SCREEN:
        return MaterialPageRoute(
          builder: (context) => const PhoneRegisterScreen(),
        );

      case VERIFY_PHONE_SCREEN:
        return MaterialPageRoute(
          builder: (context) => const VerifyPhoneScreen(),
        );
      case LOGIN_SCREEN:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case FORGET_PASSWORD_SCREEN:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
