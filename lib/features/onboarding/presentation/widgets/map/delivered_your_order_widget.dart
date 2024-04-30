import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_title_widget.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DeliveredYouOrderWidget extends StatelessWidget {
  const DeliveredYouOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 315,
        height: 100,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Colors.black.withOpacity(0.1),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 62,
              height: 62,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
              child: Image.asset(
                Assets.pngBike,
                height: 32,
                width: 32,
                // fit: BoxFit.scaleDown,
              ),
            ),
            const Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTitleWidget(
                  text: 'Delivered your order',
                  style: AppStyle.semiBold16().copyWith(
                    fontSize: 14,
                  ),
                ),
                const Gap(8),
                Text(
                  'We deliver your goods to you\n in the shortes possible time.',
                  style: AppStyle.regular14()
                      .copyWith(fontSize: 12, color: const Color(0xff808080)),
                  maxLines: 2,
                  softWrap: true,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
