import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Colors.black),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        'assets/icons/ic_camera3.svg',
        height: 50,
      ),
    );
  }
}