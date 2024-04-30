import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../generated/assets.dart';

class EditAddressWidget extends StatelessWidget {
  const EditAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 120,
        height: 27,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.black.withOpacity(0.3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              width: 14,
              height: 14,
              Assets.iconsEdit,
              fit: BoxFit.scaleDown,
            ),
            Gap(2),
            Text('Edit Address'),
          ],
        ),
      ),
    );
  }
}
