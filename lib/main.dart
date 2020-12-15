import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:instagram/provider/auth.dart';
import 'package:instagram/provider/lang.dart';
import 'package:instagram/services/app_locale.dart';
import 'package:instagram/theme.dart';
import 'package:instagram/views/auth_system/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String langCode = preferences.get('lang');
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<Lang>(create: (context) => Lang()),
      ChangeNotifierProvider<Auth>(create: (context) => Auth())
    ],
    child: MyApp(
      langCode: langCode,
    ),
  ));
}

class MyApp extends StatelessWidget {
  final String langCode;

  const MyApp({Key key, this.langCode}) : super(key: key);

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
      locale: langCode == null && context.watch<Lang>().langCode == null
          ? null
          : Locale(context.watch<Lang>().langCode ?? langCode),
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale != null) {
          for (Locale locale2 in supportedLocales) {
            if (locale.languageCode == locale2.languageCode) return locale;
          }
        }
        return supportedLocales.last;
      },
      title: 'instagram_clone',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: SplashScreen(),
    );
  }
}
