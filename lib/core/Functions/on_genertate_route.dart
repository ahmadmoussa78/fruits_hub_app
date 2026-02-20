import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_hub/features/splash/presentation/views/splash_view.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (_) => const SigninView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
