import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/styles/text_styles.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Price',
          style: AppStyle.regular14().copyWith(
            color: const Color(0xff9B9B9B),
          ),
        ),
        const Gap(8),
        Text(
          r'$ 4.53',
          style: AppStyle.semiBold16().copyWith(
            fontSize: 18,
            color: const Color(0xffC67C4E),
          ),
        ),
      ],
    );
  }
}
