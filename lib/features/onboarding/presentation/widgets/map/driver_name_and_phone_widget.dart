import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DriverNameAndPhoneWidget extends StatelessWidget {
  const DriverNameAndPhoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(Assets.pngDriverPhoto),
      title: Text(
        'Johan Hawn',
        style: AppStyle.semiBold16().copyWith(
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        'Personal Courier',
        style: AppStyle.regular14().copyWith(
          fontSize: 12,
          color: const Color(
            0xff808080,
          ),
        ),
      ),
      trailing: Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(blurRadius: 1, color: Colors.black.withOpacity(0.3)),
          ],
        ),
        child: SvgPicture.asset(
          Assets.iconsPhone,
          width: 24,
          height: 24,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
