import 'package:cafe_qr_menu/constants/color_constants.dart';
import 'package:cafe_qr_menu/constants/text_constants.dart';
import 'package:flutter/material.dart';

class ThemeService {
  static ThemeData themeConfiguration(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: ColorConstants.pureBlack,
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: ColorConstants.pureWhite,
            displayColor: ColorConstants.pureWhite,
            fontFamily: TextConstants.primaryFontName,
          ),
    );
  }
}
