import 'package:coffee_shop/features/onboarding/presentation/widgets/home/products_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/black_half_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BlackHalfWidget(),
        // PromoWidget(),
        Gap(30),
        ProductsWidget(),
      ],
    );
  }
}
