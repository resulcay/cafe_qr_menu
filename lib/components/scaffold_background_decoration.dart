import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class ScaffoldBackGroundDecoration {
  static BoxDecoration scaffoldBackgroundDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          ColorConstants.scaffoldBackground,
          ColorConstants.scaffoldBackgroundVariant,
        ]));
  }
}
