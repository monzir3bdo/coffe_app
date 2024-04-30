import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddMilkAndCoffeeBeansWidget extends StatelessWidget {
  const AddMilkAndCoffeeBeansWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AddMilkAndCoffeeBeansContainerWidget(
          icon: Assets.pngCoffeeBean,
          onPressed: () {},
        ),
        Gap(12),
        AddMilkAndCoffeeBeansContainerWidget(
          icon: Assets.pngMilk,
          onPressed: () {},
        ),
      ],
    );
  }
}

class AddMilkAndCoffeeBeansContainerWidget extends StatelessWidget {
  const AddMilkAndCoffeeBeansContainerWidget(
      {super.key, required this.icon, required this.onPressed});
  final String icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.white),
        child: Image.asset(
          icon,
          fit: BoxFit.scaleDown,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
