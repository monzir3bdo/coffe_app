import 'package:coffee_shop/core/styles/text_styles.dart';
import 'package:coffee_shop/features/onboarding/presentation/widgets/product_details/product_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductSizeWidget extends StatefulWidget {
  const ProductSizeWidget({super.key});
  static const List<String> productSize = ['S', 'M', 'L'];

  @override
  State<ProductSizeWidget> createState() => _ProductSizeWidgetState();
}

class _ProductSizeWidgetState extends State<ProductSizeWidget> {
  int _selectedSize = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTitleWidget(text: 'Size'),
        const Gap(20),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              ProductSizeWidget.productSize.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedSize = index;
                    });
                  },
                  child: ProductSizeItemWidget(
                    title: ProductSizeWidget.productSize[index],
                    isSelected: _selectedSize == index,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ProductSizeItemWidget extends StatelessWidget {
  const ProductSizeItemWidget(
      {super.key, required this.title, required this.isSelected});
  final String title;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? const Color(0xffC67C4E) : const Color(0xffDEDEDE),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: AppStyle.regular14().copyWith(
            fontSize: 16,
            color:
                isSelected ? const Color(0xffC67C4E) : const Color(0xff2F2D2C),
          ),
        ),
      ),
    );
  }
}
