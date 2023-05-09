import 'package:flutter/material.dart';

import '../../localization/locale_keys.g.dart';
import '../../service/path_service.dart';
import '../category_widget.dart';

class HotDrinkSection extends StatelessWidget {
  const HotDrinkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 80,
            child: Center(
              child: Card(
                color: Colors.brown.shade700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Hot Drinks',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
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
      ],
    );
  }
}
