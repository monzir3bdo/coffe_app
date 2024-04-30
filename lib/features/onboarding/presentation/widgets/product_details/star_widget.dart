import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../core/styles/text_styles.dart';
import '../../../../../generated/assets.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          Assets.iconsStar,
          height: 20,
          width: 20,
        ),
        Gap(4),
        RichText(
          text: TextSpan(
            text: '4.8 ',
            style: AppStyle.semiBold16(),
            children: [
              TextSpan(
                text: '(230)',
                style: AppStyle.regular14().copyWith(color: Color(0xff808080)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
