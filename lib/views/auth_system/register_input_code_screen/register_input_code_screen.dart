import 'package:flutter/material.dart';
import 'components/body.dart';

class RegisterInputCodeScreen extends StatelessWidget {
  final String emailOrPhone;

  const RegisterInputCodeScreen({Key key, this.emailOrPhone}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        elevation: 0,
      ),
      body: Body(emailOrPhone: emailOrPhone,),
    );
  }
}
