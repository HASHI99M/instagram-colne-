import 'package:flutter/material.dart';
import 'package:instagram/theme.dart';
import 'package:instagram/views/auth_system/login_screen/login_screen.dart';
import 'package:instagram/views/auth_system/register_screen/register_screen.dart';
import 'package:instagram/views/home/home.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: RegisterScreen(),
    );
  }
}
