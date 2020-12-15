import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'components/body.dart';
class RegisterWelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
        child: Scaffold(
          body: Body(),
        ));
  }

  Future<bool> _onWillPop(BuildContext context) async{
    return await customDialog(context) ?? false;
  }
}
