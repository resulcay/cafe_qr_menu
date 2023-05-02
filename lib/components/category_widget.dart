import 'package:cafe_qr_menu/constants/color_constants.dart';
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
          child: SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(
              fit: BoxFit.cover,
              PathService.imagePathProvider(imagePath),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Card(
            color: ColorConstants.transparentTeal.withOpacity(.4),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                category,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ).tr(),
            ),
          ),
        )
      ],
    );
  }
}
