import 'package:auto_size_text/auto_size_text.dart';
import 'package:cafe_qr_menu/extensions/media_query_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../service/path_service.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  final String imagePath;
  const CategoryWidget({
    super.key,
    required this.category,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: context.width * .35,
            width: context.width * .35,
            constraints: const BoxConstraints(
              maxWidth: 300,
              maxHeight: 300,
            ),
            child: Image.asset(
              fit: BoxFit.cover,
              PathService.imagePathProvider(imagePath),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: AutoSizeText(
            category.tr(),
            style: TextStyle(
              fontSize: 17 * context.widthFactor,
              fontWeight: FontWeight.w300,
            ),
          ),
        )
      ],
    );
  }
}
