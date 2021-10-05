import 'package:flutter/material.dart';

import '../../view/screens/login_screen.dart';
import '../../view/screens/splash_screen.dart';

const SplashScreenRoute = '/splash-screen';
const LoginScreenRoute = '/login-screen';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SplashScreen());

    case LoginScreenRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen());

    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen());
  }
}
