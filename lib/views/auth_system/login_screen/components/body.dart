import 'package:flutter/material.dart';

import 'custom_button_login.dart';
import 'custom_textfield_login.dart';
import 'login_facebook_button.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool showPassword = true;
  String val1, val2;
  bool valuesEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/icons/logo.png', width: 200,height: 100,fit: BoxFit.contain,),
          CustomTextFieldLogin(
            hint: 'Phone number , email or username',
            onChanged: (value) {
              setState(() {
                val1 = value;
                if (val2.isEmpty || val1.isEmpty) {
                  valuesEmpty = true;
                } else {
                  valuesEmpty = false;
                }
              });
            },
          ),
          SizedBox(height: 20,),
          CustomTextFieldLogin(
            hint: 'Password',
            isPassword: true,
            showPassword: showPassword,
            onclickEye: () {
              setState(() {
                setState(() {
                  showPassword = !showPassword;
                });
              });
            },
            onChanged: (value) {
              setState(() {
                val2 = value;
                if (val2.isEmpty || val1.isEmpty) {
                  valuesEmpty = true;
                } else {
                  valuesEmpty = false;
                }
              });
            },
          ),
          SizedBox(height: 20,),
          CustomButtonLogin(
            text: 'Log In',
            onClick: (){

            },
            valuesEmpty: valuesEmpty,
          ),
          SizedBox(height: 20,),
          RichText(text: TextSpan(
              text: 'Forget Your login details ? ',
            style: TextStyle(color: Colors.grey[600]),
            children: [
              TextSpan(text: 'Get help logging in.' , style: TextStyle(color: Colors.blueGrey))
            ]
          )),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(child: Divider(color: Colors.grey,)),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10),
                child: Text('OR'),
              ),
              Expanded(child: Divider(color: Colors.grey,)),
            ],
          ),
          SizedBox(height: 20,),
          LoginFacebookButton(onClick: (){},)
        ],
      ),
    );
  }
}







