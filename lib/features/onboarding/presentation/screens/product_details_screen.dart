import 'package:coffee_shop/features/onboarding/presentation/refactor/product_details_screen_body.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_details_app_bar.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_purchase_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Detail',
      ),
      bottomNavigationBar: ProductPurchaseWidget(),
      body: ProductDetailsScreenBody(),
    );
  }
}
