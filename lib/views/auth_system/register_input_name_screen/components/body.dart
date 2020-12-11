import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/components/custom_button_login.dart';
import 'package:instagram/views/components/custom_textfield_login.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool savePass = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(getTranslated(context, 'name_and_password') , style: TextStyle(fontWeight:FontWeight.bold , fontSize: 15 ),),
          SizedBox(height: 20,),
          CustomTextFieldLogin(hint: getTranslated(context, 'full_name'),),
          SizedBox(height: 20,),
          CustomTextFieldLogin(hint: getTranslated(context, 'hint_password'),isPassword: true , showPassword: true,textInputType: TextInputType.visiblePassword,),
          SizedBox(height: 5,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: savePass, onChanged: (value) {
                  setState(() {
                    savePass = value;
                  });
                },materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,),
                Text(getTranslated(context, 'save_pass') , style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
          SizedBox(height: 5,),
          CustomButtonLogin(
            text: getTranslated(context, 'continue_and_sync'),
          ),
          SizedBox(height: 10,),
          FlatButton(onPressed: () {

          }, child: Text(getTranslated(context, 'continue_without_sync'), style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold),),)

        ],
      ),
    );
  }
}
