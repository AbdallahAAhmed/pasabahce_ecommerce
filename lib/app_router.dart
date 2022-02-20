import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/route_string.dart';
import 'package:pasabahce/presentation/screens/Registering_screens/register_screen.dart';
import 'package:pasabahce/presentation/screens/home_screens/home_screen.dart';
import 'package:pasabahce/presentation/screens/onboarding_screens/splash_screen.dart';
import 'package:pasabahce/presentation/screens/registering_screens/forget_password.dart';
import 'package:pasabahce/presentation/screens/registering_screens/forget_password_sent.dart';
import 'package:pasabahce/presentation/screens/registering_screens/login_screen.dart';
import 'package:pasabahce/presentation/screens/registering_screens/verification_phone_screen.dart';
import 'package:pasabahce/presentation/screens/registering_screens/verified_phone_screen.dart';
import 'package:pasabahce/presentation/widgets/bottom_bar.dart';
import 'package:pasabahce/presentation/widgets/loading.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case loadingRoute:
        return MaterialPageRoute(
          builder: (_) => const LoadingScreen(),
        );
      case loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
        );
      case forgetPasswordSentRoute:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordSentScreen(),
        );
      case verificationRoute:
        return MaterialPageRoute(
          builder: (_) => const VerificationScreen(),
        );
      case verifiedPhoneRoute:
        return MaterialPageRoute(
          builder: (_) => const VerifiedPhoneScreen(),
        );
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case bottomBarRoute:
        return MaterialPageRoute(
          builder: (_) => const BottomBar(),
        );
    }
    return null;
  }
}
