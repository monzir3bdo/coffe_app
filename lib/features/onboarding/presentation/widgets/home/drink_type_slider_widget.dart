import 'package:coffee_shop/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class DrinkTypeSliderWidget extends StatefulWidget {
  const DrinkTypeSliderWidget({super.key});

  @override
  State<DrinkTypeSliderWidget> createState() => _DrinkTypeSliderWidgetState();
}

class _DrinkTypeSliderWidgetState extends State<DrinkTypeSliderWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: _selectedIndex == index
                  ? SelectedTypeWidget()
                  : UnSelectedTypeWidget(),
            );
          }),
    );
  }
}

class SelectedTypeWidget extends StatelessWidget {
  const SelectedTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 121,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primary,
      ),
    );
  }
}

class UnSelectedTypeWidget extends StatelessWidget {
  const UnSelectedTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 121,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black.withOpacity(0.8),
            // spreadRadius: 1,
          )
        ],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black.withOpacity(0.6)),
        color: Colors.white,
      ),
    );
  }
}
