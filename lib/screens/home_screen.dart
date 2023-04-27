import 'package:cafe_qr_menu/constants/color_constants.dart';
import 'package:cafe_qr_menu/constants/locale_constants.dart';
import 'package:cafe_qr_menu/constants/text_constants.dart';
import 'package:cafe_qr_menu/localization/locale_keys.g.dart';
import 'package:cafe_qr_menu/service/path_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../components/language_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
                          const MenuTopSection(),
                          const Divider(),
                          const WelcomeCard(),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Image.asset(
                                            fit: BoxFit.cover,
                                            PathService.imagePathProvider(
                                              'ice_small.png',
                                            )),
                                      ),
                                    ),
                                    const Text(
                                      LocaleKeys.coldDrink,
                                      style: TextStyle(fontSize: 18),
                                    ).tr()
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Image.asset(
                                          fit: BoxFit.fill,
                                          PathService.imagePathProvider(
                                              'coffee_small.png'),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      LocaleKeys.hotDrink,
                                      style: TextStyle(fontSize: 18),
                                    ).tr()
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Image.asset(
                                            fit: BoxFit.cover,
                                            PathService.imagePathProvider(
                                              'fries_small.png',
                                            )),
                                      ),
                                    ),
                                    const Text(
                                      LocaleKeys.fries,
                                      style: TextStyle(fontSize: 18),
                                    ).tr()
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Image.asset(
                                          fit: BoxFit.fill,
                                          PathService.imagePathProvider(
                                              'grill_small.png'),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      LocaleKeys.meals,
                                      style: TextStyle(fontSize: 18),
                                    ).tr()
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Text(
        LocaleKeys.welcome.tr(),
        style: const TextStyle(
          color: ColorConstants.primaryVariant,
          fontSize: 55,
        ),
      ),
    );
  }
}

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
