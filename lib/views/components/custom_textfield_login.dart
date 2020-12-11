import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class CustomTextFieldLogin extends StatelessWidget {
  final String hint;
  final bool isPassword;
  final bool showPassword;
  final Function onclickEye, onChanged;
  final TextInputType textInputType;
  const CustomTextFieldLogin(
      {Key key,
        this.hint,
        this.isPassword = false,
        this.showPassword = false,
        this.onclickEye,
        this.onChanged, this.textInputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfffafafa),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xffdadada), width: 1.4),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              keyboardType: textInputType,
              onChanged: onChanged,
              obscureText: isPassword && showPassword,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 14),
                hintText: hint,
                hintStyle: TextStyle(color: Color(0xff989898)),
              ),
              cursorWidth: 1,
              cursorColor: Colors.black,
            ),
          ),
          isPassword
              ? IconButton(
              icon: showPassword
                  ? Icon(Icons.remove_red_eye_sharp)
                  : Icon(Icons.remove_moderator),
              onPressed: onclickEye)
              : Text('')
        ],
      ),
    );
  }
}