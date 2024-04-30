import 'package:coffee_shop/generated/assets.dart';
import 'package:flutter/material.dart';

import '../widgets/map/driver_information_widget.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const DriverInformationWidget(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                Assets.pngMap,
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
