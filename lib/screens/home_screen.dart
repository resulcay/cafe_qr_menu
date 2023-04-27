import 'package:cafe_qr_menu/constants/color_constants.dart';
import 'package:cafe_qr_menu/constants/locale_constants.dart';
import 'package:cafe_qr_menu/constants/text_constants.dart';
import 'package:cafe_qr_menu/service/path_service.dart';
import 'package:flutter/material.dart';

import '../components/language_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(maxWidth: 896),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    PathService.imagePathProvider('cafe.png'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 50),
                              width: 200,
                              height: 80,
                              child: Row(
                                children: [
                                  const Text(
                                    'cafe',
                                    style: TextStyle(
                                      color: ColorConstants.primaryVariant,
                                      fontFamily:
                                          TextConstants.secondaryFontName,
                                      fontSize: 50,
                                    ),
                                  ),
                                  Image.asset(PathService.imagePathProvider(
                                      'cafe_logo_transparent.png'))
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
