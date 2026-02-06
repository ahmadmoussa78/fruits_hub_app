import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
