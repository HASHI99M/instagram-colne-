import 'package:flutter/material.dart';
import 'package:instagram/views/auth_system/register_screen/register_screen.dart';
import 'file:///C:/Users/HASHIM/AndroidStudioProjects/instagram/lib/views/components/switch_auth_button.dart';
import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SwitchAuthButton(
        onClick: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
        },
      ),
      body: Body(),
    );
  }
}
