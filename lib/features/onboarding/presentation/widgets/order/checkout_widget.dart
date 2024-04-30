import 'package:coffee_shop/core/extensions/build_context_extension.dart';
import 'package:coffee_shop/core/routes/app_routes.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/app_button.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cash_and_price_widget.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CashAndPriceWidget(),
              SvgPicture.asset(Assets.iconsDots)
            ],
          ),
          Spacer(),
          AppButton(
            title: 'Order',
            width: 315,
            height: 62,
            onPressed: () {
              context.navigateToScreen(destination: AppRoutes.map);
            },
          ),
        ],
      ),
    );
  }
}
