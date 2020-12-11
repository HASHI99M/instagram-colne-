import 'package:flutter/material.dart';

class UsernameBox extends StatelessWidget {
  final Function onclickEye, onChanged;
  final TextInputType textInputType;
  final bool done;

  const UsernameBox(
      {Key key,
      this.onclickEye,
      this.onChanged,
      this.textInputType,
      this.done = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xfffafafa),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xffdadada), width: 1.4),
        ),
        child: TextField(
          textAlignVertical: done ? TextAlignVertical.center : null,
          keyboardType: textInputType,
          onChanged: onChanged,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 14),
              suffixIcon: done
                  ? Icon(
                      Icons.done,
                      color: Colors.green,
                    )
                  : null),
          cursorWidth: 1,
          cursorColor: Colors.black,
        ));
  }
}
