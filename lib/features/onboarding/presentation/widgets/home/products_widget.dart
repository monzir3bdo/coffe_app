import 'package:coffee_shop/core/extensions/build_context_extension.dart';
import 'package:coffee_shop/core/routes/app_routes.dart';
import 'package:coffee_shop/core/styles/app_colors.dart';
import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/home/drink_type_slider_widget.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_title_widget.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DrinkTypeSliderWidget(),
          Gap(20),
          GestureDetector(
            onTap: () {
              context.navigateToScreen(destination: AppRoutes.productDetails);
            },
            child: Container(
              // color: Colors.white,
              width: 149,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gap(10),
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20), bottom: Radius.circular(5)),
                    child: Image.asset(
                      Assets.pngCoffee,

                      // width: 141,
                      // height: 132,
                    ),
                  ),
                  ProductPriceAndAddWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductPriceAndAddWidget extends StatelessWidget {
  const ProductPriceAndAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTitleWidget(text: 'Cappucino'),
          AppTitleWidget(
            text: 'with Chocolate',
            style: AppStyle.regular14().copyWith(
              color: Color(0xff9B9B9B),
            ),
          ),
          Gap(12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTitleWidget(text: r'$ 4.53'),
              AddProductButton(),
            ],
          )
        ],
      ),
    );
  }
}

class AddProductButton extends StatelessWidget {
  const AddProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.add,
        size: 16,
        color: Colors.white,
      ),
    );
  }
}
