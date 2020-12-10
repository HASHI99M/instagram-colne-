import 'package:flutter/material.dart';
import 'package:instagram/views/auth_system/register_screen/register_screen.dart';
import 'package:instagram/views/components/switch_lang.dart';
import 'file:///C:/Users/HASHIM/AndroidStudioProjects/instagram/lib/views/components/switch_auth_button.dart';
import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: SwitchLangWidget(
        ),
      ),
      bottomNavigationBar: SwitchAuthButton(
        onClick: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
        },
      ),
      body: Body(),
    );
  }
}
