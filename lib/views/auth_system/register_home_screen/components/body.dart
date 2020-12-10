import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_screen/register_screen.dart';
import 'package:instagram/views/components/or_widget.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/icons/logo.png',
              width: 250,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 100,),
          FacebookLoginButton(onClick: (){},),
          SizedBox(height: 15,),
          OR(),
          SizedBox(height: 15,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
            },
              child: Text(getTranslated(context, 'reg_phone_email') , style: TextStyle(fontSize: 15 , color: Colors.blue),))
        ],
      ),
    );
  }
}
class FacebookLoginButton extends StatelessWidget {
  final Function onClick;

  const FacebookLoginButton({Key key, this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: onClick,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.blue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.face , color: Colors.white),
              SizedBox(width: 3,),
              Text(getTranslated(context, 'facebook_btn') , style: TextStyle(color: Colors.white),),


            ],
          ),
        ),
      ),
    );
  }
}
