import 'package:flutter/material.dart';

class Styles {
  // Font sizes
  static const double textSizeLarge = 25.0;
  static const double textSizeDefault = 13.0;

  // Colors
  static final Color textColorStrong = _hexToColor('000000');
  static final Color textColorDefault = _hexToColor('666666');
  static final Color primaryColor = Colors.deepPurple;
  static final Color cardBackground = Colors.white;

  // TextStyles
  static final TextStyle navBarTitle = TextStyle(
    fontSize: textSizeLarge,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle headerLarge = TextStyle(
    fontSize: textSizeLarge,
    color: textColorStrong,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle textDefault = TextStyle(
    fontSize: textSizeDefault,
    color: textColorDefault,
  );

  static final TextStyle cardTitle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  // Padding
  static const EdgeInsets pagePadding = EdgeInsets.all(16.0);
  static const EdgeInsets cardPadding = EdgeInsets.all(12.0);

  // Helpers
  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
