import 'package:coffee_shop/features/onboarding/presentation/refactor/home_body.dart';
import 'package:flutter/material.dart';

import '../widgets/home/navigation_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationBarWidget(),
      body: SafeArea(
        child: HomeBody(),
      ),
    );
  }
}
