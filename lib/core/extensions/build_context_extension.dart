import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  //size
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  //colors
  // ColorExtension get color => Theme.of(this).extension<ColorExtension>()!;
  // MyAssets get image => Theme.of(this).extension<MyAssets>()!;

  //translation
  // String translate(String key) {
  //   return AppLocalizations.of(this)!.translate(key)!;
  // }

  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  Future<void> navigateToScreen({required String destination}) {
    return Navigator.pushNamed(this, destination);
  }

  Future<void> navigateReplacement(String destination) {
    return Navigator.pushReplacementNamed(this, destination);
  }

  void pop() {
    return Navigator.pop(this);
  }
}
