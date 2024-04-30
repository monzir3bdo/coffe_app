import 'package:flutter/material.dart' show TextStyle, Colors, FontWeight;

abstract class AppStyle {
  static const String fontFamily = 'Sora';
  static TextStyle semiBold16() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  static TextStyle regular14() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
    );
  }
}
