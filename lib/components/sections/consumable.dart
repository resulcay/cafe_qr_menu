import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../consumable_item.dart';

class Consumable extends StatelessWidget {
  final List<Product> products;
  final String title;
  final Color color;
  const Consumable({
    super.key,
    required this.products,
    required this.title,
    required this.color,
  });

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
                color: color,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 22),
                  ).tr(),
                ),
              ),
            ),
          ),
        ),
        Column(
          children: List.generate(
            products.length,
            (index) => ConsumableItem(
              product: products[index],
              color: color,
            ),
          ),
        ),
        const SizedBox(height: 50)
      ],
    );
  }
}
