import 'package:flutter/material.dart';
import 'const.dart';

ThemeData appTheme(){
return ThemeData(
  accentColorBrightness: Brightness.light,
  appBarTheme: AppBarTheme(
    centerTitle: false,
    brightness: Brightness.light,
    color: Colors.white,
    elevation: 2 ,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  primaryColor: kPrimaryColor,
  canvasColor: Colors.white,
);
}