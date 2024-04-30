import 'package:coffee_shop/core/extensions/build_context_extension.dart';
import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(),
            );
          },
        );
      },
      child: Container(
        width: context.width * 0.9,
        padding: const EdgeInsets.all(16),
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 1),
          ],
        ),
        child: Row(
          children: [
            SvgPicture.asset(Assets.iconsDiscount),
            const Gap(30),
            Text(
              '1 Discount is applied',
              style: AppStyle.semiBold16().copyWith(
                fontSize: 13,
              ),
            ),
            const Spacer(),
            const Icon(
              size: 20,
              Icons.arrow_forward_ios,
            )
          ],
        ),
      ),
    );
  }
}
