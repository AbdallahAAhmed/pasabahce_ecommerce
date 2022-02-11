import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/route_string.dart';
import 'package:pasabahce/presentation/screens/Registering_screens/register_screen.dart';
import 'package:pasabahce/presentation/screens/onboarding_screens/splash_screen.dart';
import 'package:pasabahce/presentation/screens/registering_screens/forget_password.dart';
import 'package:pasabahce/presentation/screens/registering_screens/login_screen.dart';
import 'package:pasabahce/presentation/widgets/loading.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoardingRoute :
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );

      case registerRoute:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
        );

      case loadingRoute:
        return MaterialPageRoute(
          builder: (_) => const LoadingScreen(),
      );
      case loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
      );
      case forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
      );
    }
  }
}
