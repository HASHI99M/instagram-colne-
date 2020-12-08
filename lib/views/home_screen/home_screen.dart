import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static final id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/icons/logo.png'),
        leading: Center(
          child: SvgPicture.asset('assets/icons/ic_camera3.svg'),
        ),
        actions: [
          Center(
              child: Padding(
            padding: EdgeInsets.only(right: 14),
            child: SvgPicture.asset('assets/icons/ic_share.svg'),
          )),
        ],
      ),
      body: Body(),
    );
  }
}
