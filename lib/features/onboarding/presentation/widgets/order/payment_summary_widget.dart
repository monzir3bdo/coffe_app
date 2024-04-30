import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/styles/text_styles.dart';
import '../product_details/product_title_widget.dart';

class PaymentSummaryWidget extends StatelessWidget {
  const PaymentSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTitleWidget(
          text: 'Payment Summary',
          style: AppStyle.semiBold16(),
        ),
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTitleWidget(
              text: 'Price',
              style: AppStyle.regular14(),
            ),
            AppTitleWidget(
              text: r'$ 4.53',
              style: AppStyle.semiBold16().copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTitleWidget(
              text: 'Delivery Fee',
              style: AppStyle.regular14(),
            ),
            AppTitleWidget(
              text: r'$ 4.53',
              style: AppStyle.semiBold16().copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
        const Gap(16),
        const Divider(
          color: Color(0xffEAEAEA),
        ),
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTitleWidget(
              text: 'Total Payment',
              style: AppStyle.regular14(),
            ),
            AppTitleWidget(
              text: r'$ 5.53',
              style: AppStyle.semiBold16().copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
