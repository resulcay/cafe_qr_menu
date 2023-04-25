import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'localization/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        LocaleConstants.trLocale,
        LocaleConstants.enLocale,
        LocaleConstants.arLocale,
      ],
      path: LocaleConstants.TRANSLATION_PATH,
      fallbackLocale: LocaleConstants.trLocale,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateTitle: (context) => LocaleKeys.title.tr(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: ColorConstants.primaryColor,
        fontFamily: TextConstants.fontName,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.setLocale(LocaleConstants.trLocale);
                  },
                  child: Text("tr")),
              ElevatedButton(
                  onPressed: () {
                    context.setLocale(LocaleConstants.enLocale);
                  },
                  child: Text("en")),
              ElevatedButton(
                  onPressed: () {
                    context.setLocale(LocaleConstants.arLocale);
                  },
                  child: Text("ar")),
              SvgPicture.asset(PathService.imageManager('gb.svg'))
            ],
          ),
        ),
      ),
    );
  }
}

class LocaleConstants extends PathService {
  static const trLocale = Locale('tr', 'TR');
  static const enLocale = Locale('en', 'US');
  static const arLocale = Locale('ar', '001');
  static const TRANSLATION_PATH = 'assets/translations';
}

class PathService {
  static const String IMAGE_BASE_PATH = "assets/images/";
  static const String FONT_BASE_PATH = "assets/fonts/";
  static const String TRANSLATION_BASE_PATH = "assets/translations/";

  static String imageManager(String name) => IMAGE_BASE_PATH + name;
}

class TextConstants {
  static const fontName = 'Gabriela';
}

class ColorConstants {
  static const primaryColor = Colors.red;
}
