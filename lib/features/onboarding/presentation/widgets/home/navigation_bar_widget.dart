import 'package:flutter/material.dart';

import '../../../../../core/routes/app_routes.dart';
import '../../../../../generated/assets.dart';
import '../../../data/nav_bar_model.dart';
import 'navigation_bar_item_widget.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int _selecteIndex = 0;
  final List<NavBarModel> items = [
    NavBarModel(title: Assets.iconsHomeNavBar, destination: AppRoutes.home),
    NavBarModel(
        title: Assets.iconsFavouriteNavBar, destination: AppRoutes.favourite),
    NavBarModel(title: Assets.iconsCarNavBar, destination: AppRoutes.cart),
    NavBarModel(
        title: Assets.iconsNotificationsNavBar,
        destination: AppRoutes.notifications),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 1, color: Colors.black.withOpacity(0.5)),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            items.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selecteIndex = index;
                  });
                },
                child: NavigationBarItemWidget(
                    icon: items[index].title,
                    isSelected: _selecteIndex == index),
              );
            },
          ),
        ),
      ),
    );
  }
}
