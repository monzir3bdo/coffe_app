import 'package:flutter/material.dart';

import '../../../../../core/styles/text_styles.dart';

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget({super.key, required this.text, this.style});
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppStyle.semiBold16(),
    );
  }
}
