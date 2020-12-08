import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final Function onclick;
  final Text text;

  const CustomButton({Key key, this.onclick, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: text,
      ),
    );
  }
}