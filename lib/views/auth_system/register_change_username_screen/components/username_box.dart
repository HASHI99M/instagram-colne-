import 'package:flutter/material.dart';
import 'package:instagram/const.dart';

class UsernameBox extends StatelessWidget {
  final Function  onChanged;
  final TextInputType textInputType;
  final bool done , error;
  final String errorMsg;
  const UsernameBox(
      {Key key,
      this.onChanged,
      this.textInputType,
      this.done = false, this.error = false, this.errorMsg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
            )),
        SizedBox(height: 2,),
        error ? Text(errorMsg , style: TextStyle(color: kColor1),) : Text('')
      ],
    );
  }
}
