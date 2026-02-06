import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/on_boarding_view_body.dart'
    show OnBoardingViewBody;

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName = 'OnBoardingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
