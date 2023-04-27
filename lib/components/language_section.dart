import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../service/path_service.dart';

class LanguageButton extends StatefulWidget {
  final String svgPath;
  final Locale locale;
  const LanguageButton({
    Key? key,
    required this.svgPath,
    required this.locale,
  }) : super(key: key);

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: GestureDetector(
        onTap: () {
          setState(() {
            context.setLocale(widget.locale);
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SvgPicture.asset(
            height: 40,
            width: 30,
            PathService.imagePathProvider(widget.svgPath),
          ),
        ),
      ),
    );
  }
}
