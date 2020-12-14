import 'package:flutter/material.dart';

import '../../../../const.dart';
class TextFieldRegister extends StatelessWidget {
  final TextEditingController controller;
  final Function onClick;
  final Function onChange;
  final String hint;
  final TextInputType textInputType;
  final bool error;
  final String errorMsg;
  const TextFieldRegister(
      {Key key, this.controller, this.onClick, this.onChange, this.textInputType, this.hint, this.error = false, this.errorMsg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.05),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: error ? kColor1 : Colors.grey.withOpacity(.4), width: 1.4),
            ),
            child: TextField(
              keyboardType: textInputType,
              onChanged: onChange,
              controller: controller,
              textAlignVertical: TextAlignVertical.center,
              cursorWidth: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 14),
                hintText: hint,
                hintStyle: TextStyle(color: Colors.grey[600]),
                suffixIcon: IconButton(
                    icon: Icon(Icons.close , color: Colors.grey,),
                    onPressed: onClick),
              ),
            )),
        SizedBox(height: 5,),
        error ? Text(errorMsg  , style: TextStyle(color: kColor1),) : Text(''),
      ],
    );
  }
}

