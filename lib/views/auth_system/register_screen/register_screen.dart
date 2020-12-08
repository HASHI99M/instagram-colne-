import 'package:flutter/material.dart';
import 'package:instagram/views/components/switch_auth_button.dart';
import 'components/body.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SwitchAuthButton(login: true,onClick: (){
      },),
      body: Body(),
    );
  }
}
