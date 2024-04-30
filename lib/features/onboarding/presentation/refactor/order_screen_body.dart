import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/order/edit_address_and_add_note_widget.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/order/orders_widget.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/order/payment_summary_widget.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/order/discount_widget.dart';

class OrderScreenBody extends StatelessWidget {
  const OrderScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(24),
            const AppTitleWidget(
              text: 'Delivery Address',
            ),
            const Gap(16),
            AppTitleWidget(
              text: 'Khartoum, Sudan',
              style: AppStyle.semiBold16().copyWith(
                fontSize: 14,
              ),
            ),
            const Gap(8),
            AppTitleWidget(
              text: 'East Nile,Hai AlJamma House no 326',
              style: AppStyle.regular14().copyWith(
                color: const Color(0xff808080),
              ),
            ),
            const Gap(16),
            const EditAddressAndAddNoteWidget(),
            const Gap(20),
            const Divider(
              thickness: 1,
              color: Color(0xffEAEAEA),
            ),
            const OrdersListWidget(),
            const Divider(
              height: 5,
              thickness: 10,
              color: Color(0xffF4F4F4),
            ),
            const Gap(20),
            const Center(
              child: DiscountWidget(),
            ),
            Gap(20),
            PaymentSummaryWidget()
          ],
        ),
      ),
    );
  }
}
