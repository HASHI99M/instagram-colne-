import 'package:flutter/material.dart';
import 'package:instagram/size_config.dart';
import 'components/body.dart';
class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: Body(),
    );
  }
}
