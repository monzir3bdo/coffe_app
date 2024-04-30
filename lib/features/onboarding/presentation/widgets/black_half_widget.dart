import 'package:coffee_shop/features/onboarding/presentation/widgets/home/Location_and_search_widget.dart';
import 'package:flutter/material.dart';

class BlackHalfWidget extends StatelessWidget {
  const BlackHalfWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      decoration: const BoxDecoration(
        color: Color(0xff313131),
      ),
      child: const Column(
        children: [
          LocationAndSearchWidget(),
        ],
      ),
    );
  }
}
