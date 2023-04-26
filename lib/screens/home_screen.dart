import 'package:cafe_qr_menu/constants/locale_constants.dart';
import 'package:cafe_qr_menu/service/path_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/text_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //    fit: StackFit.loose,
            children: [
              Image.asset(
                PathService.imagePathProvider(
                  'cafe.png',
                ),
                fit: BoxFit.cover,
                width: 600,
              ),
              Image.asset(
                PathService.imagePathProvider(
                  'ice.png',
                ),
                fit: BoxFit.cover,
                width: 600,
              ),
              Image.asset(
                PathService.imagePathProvider(
                  'coffee.png',
                ),
                fit: BoxFit.cover,
                width: 600,
              ),
              Image.asset(
                PathService.imagePathProvider(
                  'fries.png',
                ),
                fit: BoxFit.cover,
                width: 600,
              ),
              Image.asset(
                PathService.imagePathProvider(
                  'grill.png',
                ),
                fit: BoxFit.cover,
                width: 600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


    //  Image.asset(PathService.imagePathProvider('ice.png'),
    //               fit: BoxFit.cover, scale: .8),
    //           Image.asset(PathService.imagePathProvider('coffee.png'),
    //               fit: BoxFit.cover, scale: .8),
    //           Image.asset(PathService.imagePathProvider('fries.png'),
    //               fit: BoxFit.cover, scale: .8),
    //           Image.asset(PathService.imagePathProvider('grill.png'),
    //               fit: BoxFit.cover, scale: .8),