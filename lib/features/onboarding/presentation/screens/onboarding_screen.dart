import 'package:coffee_shop/features/onboarding/presentation/refactor/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: SafeArea(
        child: OnboardingBody(),
      ),
    );
  }
}
