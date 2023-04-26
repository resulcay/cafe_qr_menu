import 'package:cafe_qr_menu/constants/color_constants.dart';
import 'package:cafe_qr_menu/constants/text_constants.dart';
import 'package:flutter/material.dart';

class ThemeService {
  static ThemeData themeConfiguration() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: ColorConstants.primaryColor,
      fontFamily: TextConstants.primaryFontName,
    );
  }
}
