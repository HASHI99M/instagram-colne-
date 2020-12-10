import 'package:flutter/material.dart';
import 'package:instagram/views/components/switch_auth_button.dart';
import 'package:instagram/views/components/switch_lang.dart';
import 'components/body.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: SwitchLangWidget(),
      ),
      bottomNavigationBar: SwitchAuthButton(
        login: true,
        onClick: () {},
      ),
      body: Body(),
    );
  }
}

