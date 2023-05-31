import 'package:cafe_qr_menu/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../models/product.dart';
import '../service/path_service.dart';

class ConsumableItem extends StatelessWidget {
  final Product product;
  final Color color;
  const ConsumableItem({
    Key? key,
    required this.product,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: context.width * .08,
              margin: const EdgeInsets.only(right: 5),
              constraints: const BoxConstraints(
                maxWidth: 800,
                maxHeight: 70,
              ),
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: AutoSizeText(
                  product.name,
                  style: TextStyle(fontSize: 20 * context.widthFactor),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            height: context.width * .2,
            width: context.width * .2,
            constraints: const BoxConstraints(
              maxHeight: 200,
              maxWidth: 200,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                fit: BoxFit.cover,
                PathService.imagePathProvider(product.imagePath),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
