import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DeliveryToWidget extends StatelessWidget {
  const DeliveryToWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'Delivery to ',
          style: AppStyle.regular14().copyWith(
            color: Color(0xff808080),
          ),
          children: [
            TextSpan(
                text: 'Monzir Abdalrahman',
                style: AppStyle.regular14().copyWith(color: Color(0xff303336))),
          ],
        ),
      ),
    );
  }
}
