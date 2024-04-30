import 'package:coffee_shop/features/onboarding/presentation/widgets/map/delivered_your_order_widget.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/map/delivery_to_widget.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/map/driver_name_and_phone_widget.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/map/progress_indicator_row.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DriverInformationBodyWidget extends StatelessWidget {
  const DriverInformationBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: AppTitleWidget(
            text: '10 minutes left',
          ),
        ),
        Gap(6),
        DeliveryToWidget(),
        Gap(20),
        ProgressIndicatorRowWidget(),
        Gap(12),
        DeliveredYouOrderWidget(),
        Gap(5),
        DriverNameAndPhoneWidget()
      ],
    );
  }
}
