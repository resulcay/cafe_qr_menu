import 'package:cafe_qr_menu/constants/locale_constants.dart';
import 'package:cafe_qr_menu/service/path_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.setLocale(LocaleConstants.trLocale);
                },
                child: const Text("tr")),
            ElevatedButton(
                onPressed: () {
                  context.setLocale(LocaleConstants.enLocale);
                },
                child: const Text("en")),
            ElevatedButton(
                onPressed: () {
                  context.setLocale(LocaleConstants.arLocale);
                },
                child: const Text("ar")),
            SvgPicture.asset(PathService.imagePathProvider('gb.svg'))
          ],
        ),
      ),
    );
  }
}
