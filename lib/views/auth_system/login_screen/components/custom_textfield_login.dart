import 'package:flutter/material.dart';
class CustomTextFieldLogin extends StatelessWidget {
  final String hint;
  final bool isPassword;
  final bool showPassword;
  final Function onclickEye, onChanged;

  const CustomTextFieldLogin(
      {Key key,
        this.hint,
        this.isPassword = false,
        this.showPassword = false,
        this.onclickEye,
        this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.15),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.withOpacity(.5), width: 1.4),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: onChanged,
              obscureText: isPassword && showPassword,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 14),
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey[600]),
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