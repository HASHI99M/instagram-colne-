import 'package:flutter/material.dart';

import '../../../../const.dart';
class CustomButtonLogin extends StatelessWidget {
  final bool valuesEmpty;
  final Function onClick;
  final String text;
  const CustomButtonLogin({Key key, this.valuesEmpty = true, this.onClick, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: valuesEmpty ? null : onClick,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: valuesEmpty ? kPrimaryColor.withOpacity(.6) : kPrimaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.grey[200], fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}