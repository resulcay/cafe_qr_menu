import 'package:flutter/material.dart';

import '../../localization/locale_keys.g.dart';
import '../category_widget.dart';
import '../menu_top_section.dart';
import '../welcome_card.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

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
                    category: LocaleKeys.entree,
                    imagePath: 'fries.png',
                  ),
                  CategoryWidget(
                    category: LocaleKeys.mainCourse,
                    imagePath: 'grill_small.png',
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
