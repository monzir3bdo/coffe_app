import 'package:flutter/material.dart';

import 'driver_information_body_widget.dart';

class DriverInformationWidget extends StatelessWidget {
  const DriverInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      child: DriverInformationBodyWidget(),
    );
  }
}
