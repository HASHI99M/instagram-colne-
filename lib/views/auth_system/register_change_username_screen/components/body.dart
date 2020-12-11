import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_change_username_screen/components/username_box.dart';
import 'package:instagram/views/components/custom_button_login.dart';

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
          Text(getTranslated(context, 'change_username'), style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Text(getTranslated(context, 'pick_username_note'), style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
          ),
          SizedBox(height: 20,),
          UsernameBox(),
          SizedBox(height: 20,),
          CustomButtonLogin(onClick:(){},text: getTranslated(context, 'next'),valuesEmpty: false,)
        ],
      ),
    );
  }
}



