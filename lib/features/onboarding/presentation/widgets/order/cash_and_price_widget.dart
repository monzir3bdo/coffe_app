import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/text_styles.dart';
import '../../../../../generated/assets.dart';

class CashAndPriceWidget extends StatelessWidget {
  const CashAndPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.iconsMoney),
        const Gap(12),
        const CashAndPriceItemWidget(
          txt: 'Cash',
          color: AppColors.primary,
        ),
        const CashAndPriceItemWidget(
          txt: r'$ 5.53',
          color: Colors.white,
          textColor: Color(0xff2F2D2C),
        ),
      ],
    );
  }
}

class CashAndPriceItemWidget extends StatelessWidget {
  const CashAndPriceItemWidget(
      {super.key, required this.txt, required this.color, this.textColor});
  final String txt;
  final Color color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 51,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          txt,
          style: AppStyle.regular14().copyWith(
            fontSize: 12,
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
