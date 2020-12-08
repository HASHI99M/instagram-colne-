import 'package:flutter/material.dart';
class CustomTextFailed extends StatelessWidget {
  final String labelText;
  final String hintText;
  final int maxLine;

  const CustomTextFailed(
      {Key key, this.labelText, this.hintText, this.maxLine = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        maxLines: maxLine,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}