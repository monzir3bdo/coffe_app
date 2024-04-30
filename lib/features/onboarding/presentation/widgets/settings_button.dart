import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../generated/assets.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SvgPicture.asset(
          width: 20,
          height: 20,
          Assets.iconsSettings,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
