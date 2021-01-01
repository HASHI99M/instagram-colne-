import 'package:flutter/cupertino.dart';

class Lang extends ChangeNotifier{
  String langCode;

 void changeLang(String langCode){
   this.langCode = langCode;
   notifyListeners();
 }
}