import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';

class LocationAndAvatarWidget extends StatelessWidget {
  const LocationAndAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          'Location',
          style: AppStyle.regular14().copyWith(
            fontSize: 14,
            color: const Color(0xffB7B7B7),
          ),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Khartoum Sudan',
              style: AppStyle.semiBold16().copyWith(
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.white,
            ),
          ],
        ),
        trailing: Image.asset(
          Assets.pngUserPhoto,
        ),
      ),
    );
  }
}
