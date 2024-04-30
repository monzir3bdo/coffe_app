import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class NavigationBarItemWidget extends StatelessWidget {
  const NavigationBarItemWidget(
      {super.key, required this.icon, required this.isSelected});
  final String icon;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: isSelected
            ? [
                SvgPicture.asset(
                  icon,
                ),
                Gap(10),
                SvgPicture.asset(Assets.iconsSelected)
              ]
            : [
                SvgPicture.asset(
                  icon,
                ),
              ]);
  }
}
