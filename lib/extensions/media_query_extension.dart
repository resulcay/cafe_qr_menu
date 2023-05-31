import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
}

extension WidthFactor on BuildContext {
  double get widthFactor => mediaQuery.size.width < 897
      ? mediaQuery.size.width * 0.0025
      : mediaQuery.size.width * 0.0015;
}
