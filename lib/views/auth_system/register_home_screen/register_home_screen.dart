import 'package:flutter/material.dart';
import 'package:instagram/views/auth_system/login_screen/login_screen.dart';
import 'package:instagram/views/components/switch_auth_button.dart';
import 'components/body.dart';
import 'package:instagram/views/components/switch_lang.dart';

class RegisterHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SwitchAuthButton(
        login: true,
        onClick: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
        },
      ),
      body: Body(),
    );
  }
}
