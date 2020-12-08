import 'package:flutter/material.dart';
import 'file:///C:/Users/HASHIM/AndroidStudioProjects/instagram/lib/views/components/switch_auth_button.dart';
import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SwitchAuthButton(
        onClick: (){
        },
      ),
      body: Body(),
    );
  }
}
