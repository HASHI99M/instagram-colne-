import 'package:flutter/material.dart';
import 'package:instagram/provider/auth.dart';
import 'package:instagram/size_config.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_input_name_screen/register_input_name_screen.dart';
import 'package:instagram/views/components/custom_button_login.dart';
import 'package:instagram/views/components/custom_textfield_login.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize = SizeConfig.defaultSize;
  bool disableBtn = true;
  String code;

  @override
  Widget build(BuildContext context) {
    final proAuth = Provider.of<Auth>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize*2),
      child: Column(
        children: [
          Text(getTranslated(context, 'enter_code') , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold ),),
          SizedBox(height: defaultSize*1.5,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: defaultSize),
            child: Text('${getTranslated(context, 'sent_to_code')} ${proAuth.email ?? proAuth.phone} .' , textAlign: TextAlign.center,),
          ),
          SizedBox(height: defaultSize*1.5,),
          CustomTextFieldLogin(hint: getTranslated(context, 'conf_code'),textInputType: TextInputType.number,onChanged: (value){
            if(value.toString().length == 6 ){
              setState(() {
                disableBtn = false;
                code = value.toString();
              });
            }else{
              setState(() {
                disableBtn = true;
              });
            }
          },),
          SizedBox(height: defaultSize*1.5,),
          CustomButtonLogin(text: getTranslated(context, 'next'),disable: disableBtn,onClick:()=> _checkCode(context),)
        ],
      ),
    );
  }
 void _checkCode(BuildContext context){
    if(code == '123456'){
      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterInputNameScreen(),));
    }else{
      alertErrorCode(context);
    }
 }

}
