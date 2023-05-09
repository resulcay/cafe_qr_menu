import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'constants/locale_constants.dart';
import 'localization/locale_keys.g.dart';
import 'screens/home_screen.dart';
import 'service/theme_service.dart';

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
      theme: ThemeService.themeConfiguration(context),
      home: const HomeScreen(),
    );
  }
}
