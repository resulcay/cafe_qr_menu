import 'package:cafe_qr_menu/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';

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
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
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
          ),
          Container(
            height: context.width * .1,
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 800,
              maxHeight: 100,
            ),
            margin: const EdgeInsets.only(right: 80),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                product.name,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
