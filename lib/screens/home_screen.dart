import 'package:cafe_qr_menu/localization/locale_keys.g.dart';
import 'package:cafe_qr_menu/models/product.dart';
import 'package:flutter/material.dart';

import '../components/scaffold_background_decoration.dart';
import '../components/sections/category_section.dart';
import '../components/sections/consumable.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ScaffoldBackGroundDecoration.scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 896),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const CategorySection(),
                    Consumable(
                      title: LocaleKeys.coldDrink,
                      color: Colors.blue.shade700,
                      products: Product.coldDrinks,
                    ),
                    Consumable(
                      title: LocaleKeys.hotDrink,
                      color: Colors.brown.shade700,
                      products: Product.hotDrinks,
                    ),
                    Consumable(
                      title: LocaleKeys.entree,
                      color: Colors.yellow.shade900,
                      products: Product.entrees,
                    ),
                    Consumable(
                      title: LocaleKeys.mainCourse,
                      color: Colors.redAccent.shade700,
                      products: Product.mainCourses,
                    ),
                    const SizedBox(height: 600)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
