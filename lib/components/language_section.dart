import 'package:cafe_qr_menu/constants/color_constants.dart';
import 'package:cafe_qr_menu/screens/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../service/path_service.dart';

class LanguageButton extends StatefulWidget {
  final String svgPath;
  final String language;
  final Locale locale;
  const LanguageButton({
    Key? key,
    required this.svgPath,
    required this.language,
    required this.locale,
  }) : super(key: key);

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  setLocale() {
    context.setLocale(widget.locale).whenComplete(() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: GestureDetector(
            onTap: setLocale,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SvgPicture.asset(
                height: 40,
                width: 30,
                PathService.imagePathProvider(widget.svgPath),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(widget.language.toUpperCase())
      ],
    );
  }
}
