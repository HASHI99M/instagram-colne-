import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:instagram/services/app_locale.dart';
import 'package:instagram/theme.dart';
import 'package:instagram/views/profile_screen/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      locale: Locale('en'),
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale != null) {
          for (Locale locale2 in supportedLocales) {
            if (locale.languageCode == locale2.languageCode) return locale;
          }
        }
        return supportedLocales.last;
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: ProfileScreen(),
    );
  }
}
