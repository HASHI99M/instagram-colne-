import 'package:flutter/material.dart';
import 'package:instagram/views/auth_system/register_home_screen/register_home_screen.dart';

import '../../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize = SizeConfig.defaultSize;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => RegisterHomeScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: defaultSize * 4),
          child: Image.asset(
            'assets/images/logo.png',
            width: defaultSize * 8,
            height: defaultSize * 8,
          ),
        ),
      ),
    );
  }
}
