import 'package:flutter/material.dart';
class ImageProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.person_outline_outlined,
        size: 70,
      ),
    );
  }
}