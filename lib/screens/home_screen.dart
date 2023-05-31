import 'package:cafe_qr_menu/constants/color_constants.dart';
import 'package:cafe_qr_menu/localization/locale_keys.g.dart';
import 'package:cafe_qr_menu/models/product.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../components/scaffold_background_decoration.dart';
import '../components/sections/category_section.dart';
import '../components/sections/consumable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final AutoScrollController controller;
  bool showButton = false;
  @override
  void initState() {
    controller = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, MediaQuery.of(context).padding.top, 0, 0),
      axis: Axis.vertical,
      suggestedRowHeight: 200,
    );

    controller.addListener(() {
      double showoffset = 10.0;

      if (controller.offset > showoffset) {
        showButton = true;
        setState(() {
          //update state
        });
      } else {
        showButton = false;
        setState(() {
          //update state
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ScaffoldBackGroundDecoration.scaffoldBackgroundDecoration(),
      child: Scaffold(
        floatingActionButton: AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),
          opacity: showButton ? 1.0 : 0.0,
          child: SizedBox(
            height: 50,
            width: 50,
            child: Visibility(
              visible: showButton,
              child: FloatingActionButton(
                onPressed: () => controller.animateTo(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn),
                backgroundColor: ColorConstants.pureBlack,
                child: const Icon(
                  Icons.arrow_upward,
                  color: ColorConstants.pureWhite,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 896),
            child: SingleChildScrollView(
              controller: controller,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    AutoScrollTag(
                      key: const ValueKey(0),
                      controller: controller,
                      index: 0,
                      child: CategorySection(
                        controller: controller,
                      ),
                    ),
                    AutoScrollTag(
                      key: const ValueKey(1),
                      controller: controller,
                      index: 1,
                      child: Consumable(
                        title: LocaleKeys.coldDrink,
                        color: Colors.purple.shade700,
                        products: Product.coldDrinks,
                      ),
                    ),
                    AutoScrollTag(
                      key: const ValueKey(2),
                      controller: controller,
                      index: 2,
                      child: Consumable(
                        title: LocaleKeys.hotDrink,
                        color: Colors.brown.shade700,
                        products: Product.hotDrinks,
                      ),
                    ),
                    AutoScrollTag(
                      key: const ValueKey(3),
                      controller: controller,
                      index: 3,
                      child: Consumable(
                        title: LocaleKeys.entree,
                        color: Colors.yellow.shade900,
                        products: Product.entrees,
                      ),
                    ),
                    AutoScrollTag(
                      key: const ValueKey(4),
                      controller: controller,
                      index: 4,
                      child: Consumable(
                        title: LocaleKeys.mainCourse,
                        color: Colors.redAccent.shade700,
                        products: Product.mainCourses,
                      ),
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
