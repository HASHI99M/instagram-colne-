import 'package:flutter/cupertino.dart';

class Auth extends ChangeNotifier {
  String username, email, phone, fullName, password, birthday;


  setValues(
      {String username,
      String email,
      String phone,
      String fullName,
      String password,
      String birthday}) {
    this.username = username;
    this.email = email;
    this.phone = phone;
    this.fullName = fullName;
    this.password = password;
    this.birthday = birthday;
    notifyListeners();
  }


}
