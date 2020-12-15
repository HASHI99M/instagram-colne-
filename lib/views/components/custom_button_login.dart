import 'package:flutter/material.dart';
import '../../const.dart';

class CustomButtonLogin extends StatelessWidget {
  final Function onClick;
  final String text;
  final bool loading , disable;
  const CustomButtonLogin(
      {Key key,
      this.disable = true,
      this.onClick,
      this.text,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: disable ? null : onClick,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: disable
              ? Color(0xffb2dffc)
              : loading
                  ? Color(0xffb2dffc)
                  : kPrimaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: loading
            ? SizedBox(
                height: 15, width: 15, child: CircularProgressIndicator(strokeWidth: 2))
            : Text(
                text,
                style: TextStyle(
                    color: Colors.grey[200], fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
