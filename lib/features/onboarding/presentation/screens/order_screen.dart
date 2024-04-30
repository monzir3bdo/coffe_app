import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_details_app_bar.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../refactor/order_screen_body.dart';
import '../widgets/order/checkout_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Order',
        actions: SvgPicture.asset(Assets.iconsHeart),
      ),
      bottomNavigationBar: CheckoutWidget(),
      body: SafeArea(
        child: OrderScreenBody(),
      ),
    );
  }
}
