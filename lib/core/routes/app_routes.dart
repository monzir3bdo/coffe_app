import 'package:coffee_shop/core/routes/base_route.dart';
import 'package:coffee_shop/features/onboarding/presentation/screens/map_screen.dart';
import 'package:coffee_shop/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/presentation/screens/home_screen.dart';
import '../../features/onboarding/presentation/screens/order_screen.dart';
import '../../features/onboarding/presentation/screens/product_details_screen.dart';

abstract class AppRoutes {
  static const onboarding = '/';
  static const home = '/home';
  static const productDetails = '/details';
  static const order = '/order';
  static const favourite = '/favourite';
  static const cart = '/cart';
  static const notifications = '/notifications';
  static const map = '/map';
  static BaseRoute onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case onboarding:
        return BaseRoute(screen: const OnboardingScreen());
      case home:
        return BaseRoute(screen: const HomeScreen());
      case productDetails:
        return BaseRoute(screen: const ProductDetailsScreen());
      case order:
        return BaseRoute(screen: const OrderScreen());
      case map:
        return BaseRoute(screen: MapScreen());
      default:
        return BaseRoute(screen: const OnboardingScreen());
    }
  }
}
