import 'package:flutter/material.dart';

class CustomColor {
  // ! LIST COLOR
  static const String PRIMARY = '#522d07';
  static const String SECONDARY = '#FF972F';
  static const String ACCIENT = '#5C5C5C';
  static const String WHITE = '#FFFFFF';

  static Color parse({required String color}) {
    return CustomColor().convertColorFromHex(color);
  }

  static Color set({required int color}) {
    return Color(color);
  }

  Color convertColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
