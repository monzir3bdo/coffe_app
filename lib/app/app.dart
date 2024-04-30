import 'package:coffee_shop/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.onboarding,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
