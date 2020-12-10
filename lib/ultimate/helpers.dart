import 'package:flutter/material.dart';
import 'package:instagram/services/app_locale.dart';

String getTranslated(BuildContext context , String key){
  return AppLocale.of(context).getTranslated(key);
}

