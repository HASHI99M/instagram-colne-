import 'package:flutter/material.dart';
import 'package:instagram/size_config.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_change_username_screen/components/username_box.dart';
import 'package:instagram/views/components/custom_button_login.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize2 = SizeConfig.defaultSize2 ,defaultSize =  SizeConfig.defaultSize;
  String username;
  bool done , loading;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize*2),
      child: Column(
        children: [
          SizedBox(height: defaultSize2*10,),
          Text(getTranslated(context, 'change_username'), style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),textAlign: TextAlign.center,),
          SizedBox(height: defaultSize2,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: defaultSize),
            child: Text(getTranslated(context, 'pick_username_note'), style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
          ),
          SizedBox(height: defaultSize2,),
          UsernameBox(onChanged: (value){
            setState(() {
              username = value;
            });
          },done: true ,error: true,errorMsg: getTranslated(context, 'user_name_error1') +' $username ' + getTranslated(context, 'user_name_error2') ,),
          SizedBox(height: defaultSize2,),
          CustomButtonLogin(onClick:(){},text: getTranslated(context, 'next'),disable: false,)
        ],
      ),
    );
  }
}



