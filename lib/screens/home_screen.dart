import 'package:cafe_qr_menu/constants/color_constants.dart';
import 'package:flutter/material.dart';

import '../components/scaffold_background_decoration.dart';
import '../components/sections/category_section.dart';
import '../components/sections/cold_drink_section.dart';
import '../components/sections/entree_section.dart';
import '../components/sections/hot_drink_section.dart';
import '../components/sections/main_course_section.dart';

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
                  children: const [
                    CategorySection(),
                    ColdDrinkSection(),
                    HotDrinkSection(),
                    EntreeSection(),
                    MainCourseSection(),
                    SizedBox(height: 600)
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
