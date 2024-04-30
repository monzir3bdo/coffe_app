import 'package:coffee_shop/core/extensions/build_context_extension.dart';
import 'package:coffee_shop/core/routes/app_routes.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/app_button.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/price_widget.dart';
import 'package:flutter/material.dart';

class ProductPurchaseWidget extends StatelessWidget {
  const ProductPurchaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        top: 16,
        start: 30,
        end: 30,
      ),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black.withOpacity(0.4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PriceWidget(),
            const Spacer(),
            AppButton(
              title: 'Buy Now',
              width: 217,
              height: 63,
              onPressed: () {
                context.navigateToScreen(destination: AppRoutes.order);
              },
            ),
          ],
        ),
      ),
    );
  }
}
