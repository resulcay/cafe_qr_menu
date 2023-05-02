import 'package:cafe_qr_menu/constants/color_constants.dart';
import 'package:cafe_qr_menu/constants/locale_constants.dart';
import 'package:cafe_qr_menu/constants/text_constants.dart';
import 'package:cafe_qr_menu/localization/locale_keys.g.dart';
import 'package:cafe_qr_menu/service/path_service.dart';
import 'package:flutter/material.dart';

import '../components/category_widget.dart';
import '../components/language_section.dart';
import '../components/menu_top_section.dart';
import '../components/welcome_card.dart';

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
                          const SizedBox(height: 30),
                          const WelcomeCard(),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                CategoryWidget(
                                  category: LocaleKeys.coldDrink,
                                  imagePath: 'ice_small.png',
                                ),
                                CategoryWidget(
                                  category: LocaleKeys.hotDrink,
                                  imagePath: 'coffee_small.png',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                CategoryWidget(
                                  category: LocaleKeys.fries,
                                  imagePath: 'fries.png',
                                ),
                                CategoryWidget(
                                  category: LocaleKeys.grill,
                                  imagePath: 'grill_small.png',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      PathService.imagePathProvider('ice.png'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 1000,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 15,
                          itemBuilder: (context, index) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: const [
                              CategoryWidget(
                                category: LocaleKeys.coldDrink,
                                imagePath: 'ice_small.png',
                              ),
                              CategoryWidget(
                                category: LocaleKeys.hotDrink,
                                imagePath: 'coffee_small.png',
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 600)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
