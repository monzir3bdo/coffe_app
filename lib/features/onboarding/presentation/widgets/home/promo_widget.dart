import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 13,
        left: 23,
      ),
      width: 315,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(
            Assets.pngPromo,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 26,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(
                0xffED5151,
              ),
            ),
            child: Center(
              child: Text(
                'Promo',
                style: AppStyle.regular14().copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
