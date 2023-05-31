// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../localization/locale_keys.g.dart';
import '../category_widget.dart';
import '../menu_top_section.dart';
import '../welcome_card.dart';

class CategorySection extends StatelessWidget {
  final AutoScrollController controller;
  const CategorySection({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
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
                children: [
                  GestureDetector(
                    onTap: () => controller.scrollToIndex(
                      1,
                      preferPosition: AutoScrollPosition.begin,
                    ),
                    child: const CategoryWidget(
                      category: LocaleKeys.coldDrink,
                      imagePath: 'cold_drink.jpg',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => controller.scrollToIndex(
                      2,
                      preferPosition: AutoScrollPosition.begin,
                    ),
                    child: const CategoryWidget(
                      category: LocaleKeys.hotDrink,
                      imagePath: 'coffee_small.png',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: () => controller.scrollToIndex(
                      3,
                      preferPosition: AutoScrollPosition.begin,
                    ),
                    child: const CategoryWidget(
                      category: LocaleKeys.entree,
                      imagePath: 'fries.png',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => controller.scrollToIndex(
                      4,
                      preferPosition: AutoScrollPosition.begin,
                    ),
                    child: const CategoryWidget(
                      category: LocaleKeys.mainCourse,
                      imagePath: 'grill_small.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100)
          ],
        )
      ],
    );
  }
}
