import 'package:cafe_qr_menu/extensions/media_query_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../localization/locale_keys.g.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        LocaleKeys.welcome.tr(),
        style: TextStyle(fontSize: 27 * context.widthFactor),
      ),
    );
  }
}
