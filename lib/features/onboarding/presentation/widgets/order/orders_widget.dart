import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_title_widget.dart';
import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrdersListWidget extends StatelessWidget {
  const OrdersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrderItemWidget();
  }
}

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Image.asset(
          Assets.pngCoffee,
        ),
      ),
      title: const AppTitleWidget(text: 'Cappucino'),
      subtitle: AppTitleWidget(
        text: 'with Chocolate',
        style: AppStyle.regular14()
            .copyWith(fontSize: 14, color: const Color(0xff9B9B9B)),
      ),
      trailing: const IncreaseOrDecreaseQuantityWidget(),
    );
  }
}

class IncreaseOrDecreaseQuantityWidget extends StatelessWidget {
  const IncreaseOrDecreaseQuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IncreaseOrDecreaseButton(icon: Icons.remove, onPressed: () {}),
        const Gap(14),
        Text(
          '1',
          style: AppStyle.semiBold16().copyWith(
            fontSize: 14,
          ),
        ),
        const Gap(14),
        IncreaseOrDecreaseButton(
          icon: Icons.add,
          onPressed: () {},
        ),
      ],
    );
  }
}

class IncreaseOrDecreaseButton extends StatelessWidget {
  const IncreaseOrDecreaseButton(
      {super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 28,
        width: 28,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: const CircleBorder(),
          shadows: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.black.withOpacity(0.3),
            ),
          ],
        ),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
