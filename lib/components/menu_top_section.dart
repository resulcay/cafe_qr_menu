import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import '../constants/locale_constants.dart';
import '../constants/text_constants.dart';
import '../service/path_service.dart';
import 'language_section.dart';

class MenuTopSection extends StatelessWidget {
  const MenuTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 5),
          width: 150,
          height: 80,
          child: Row(
            children: [
              const Text(
                'cafe',
                style: TextStyle(
                  color: ColorConstants.primaryVariant,
                  fontFamily: TextConstants.secondaryFontName,
                  fontSize: 50,
                ),
              ),
              Image.asset(
                  PathService.imagePathProvider('cafe_logo_transparent.png'))
            ],
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: const [
            LanguageButton(
              locale: LocaleConstants.trLocale,
              svgPath: 'tr.svg',
            ),
            LanguageButton(
              locale: LocaleConstants.enLocale,
              svgPath: 'gb.svg',
            ),
            LanguageButton(
              locale: LocaleConstants.arLocale,
              svgPath: 'ae.svg',
            ),
          ],
        ),
      ],
    );
  }
}
