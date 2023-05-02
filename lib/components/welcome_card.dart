import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../localization/locale_keys.g.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.transparentTeal.withOpacity(.4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          LocaleKeys.welcome.tr(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 55,
          ),
        ),
      ),
    );
  }
}
