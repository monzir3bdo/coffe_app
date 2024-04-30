import 'package:coffee_shop/core/extensions/build_context_extension.dart';
import 'package:coffee_shop/core/routes/app_routes.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              Assets.pngOnboardingImage,
              height: 550,
              width: double.infinity,
            ),
          ),
          const Text(
            'Coffee so good,\n your taste buds\n will love it.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'The best grain, the finest roast, the\n powerful flavor.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffA9A9A9),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: AppButton(
                onPressed: () {
                  context.navigateToScreen(destination: AppRoutes.home);
                  print('wtf');
                },
                title: 'Get Stated',
                width: double.infinity,
                height: 70),
          ),
        ],
      ),
    );
  }
}
