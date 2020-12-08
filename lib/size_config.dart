import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double reallyScreenWidth;
  static double reallyScreenHeight;
  static double defaultSize;
  static double appBarSize;
  static double statusBarHeight;
  static Orientation orientation;

  SizeConfig(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    orientation = _mediaQueryData.orientation;
    screenWidth =  _mediaQueryData.size.width;
    screenHeight =  _mediaQueryData.size.height;
    reallyScreenWidth = orientation == Orientation.portrait ? _mediaQueryData.size.width : _mediaQueryData.size.height;
    reallyScreenHeight = orientation == Orientation.portrait ? _mediaQueryData.size.height : _mediaQueryData.size.width;
    appBarSize = AppBar().preferredSize.height;
    statusBarHeight = _mediaQueryData.padding.top;
    defaultSize = orientation == Orientation.portrait ? screenWidth * .027777799 : screenHeight * .027777799;
  }
}
