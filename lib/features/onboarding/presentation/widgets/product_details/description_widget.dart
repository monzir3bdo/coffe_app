import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'A cappuccino is an approximately 150 ml (5oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
          maxLines: 3,
          style: AppStyle.regular14().copyWith(
            color: const Color(0xff9B9B9B),
          ),
        )
      ],
    );
  }
}
