import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/add_milk_and_coffee_beans_widget.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_size_widget.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/product_details/description_widget.dart';
import '../widgets/product_details/product_title_widget.dart';
import '../widgets/product_details/star_widget.dart';

class ProductDetailsScreenBody extends StatelessWidget {
  const ProductDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  Assets.pngCoffee,
                  width: double.infinity,
                  height: 226,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(20),
            const ProductDetailsScreenWithPadding10()
          ],
        ),
      ),
    );
  }
}

class ProductDetailsScreenWithPadding10 extends StatelessWidget {
  const ProductDetailsScreenWithPadding10({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const AppTitleWidget(
            text: 'Cappucino',
          ),
          AppTitleWidget(
            text: 'with Chocolate',
            style: AppStyle.regular14().copyWith(
              fontSize: 12,
              color: const Color(0xff9B9B9B),
            ),
          ),
          const Gap(16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StarWidget(),
              AddMilkAndCoffeeBeansWidget(),
            ],
          ),
          const Gap(20),
          const Divider(
            thickness: 1,
            color: Color(0xffEAEAEA),
          ),
          const Gap(20),
          const AppTitleWidget(text: 'Description'),
          const Gap(12),
          const DescriptionWidget(),
          const Gap(20),
          const ProductSizeWidget(),
        ],
      ),
    );
  }
}
