import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../location_and_avatar_widget.dart';
import '../search_widget.dart';

class LocationAndSearchWidget extends StatelessWidget {
  const LocationAndSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20),
        LocationAndAvatarWidget(),
        Gap(28),
        SearchWidget(),
      ],
    );
  }
}
