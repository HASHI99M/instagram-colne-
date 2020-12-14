import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_input_name_screen/register_input_name_screen.dart';
import 'package:instagram/views/components/custom_button_login.dart';
import 'package:instagram/views/components/custom_textfield_login.dart';

class Body extends StatefulWidget {
  final String emailOrPhone;

  const Body({Key key, this.emailOrPhone}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool disableBtn = true;
  String code;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(getTranslated(context, 'enter_code') , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold ),),
          SizedBox(height: 15,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10),
            child: Text('${getTranslated(context, 'sent_to_code')} ${widget.emailOrPhone} .' , textAlign: TextAlign.center,),
          ),
          SizedBox(height: 15,),
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
          SizedBox(height: 15,),
          CustomButtonLogin(text: getTranslated(context, 'next'),disable: disableBtn,onClick:_checkCode,)
        ],
      ),
    );
  }
 void _checkCode(){
    if(code == '123456'){
      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterInputNameScreen(),));
    }else{
      print('object');
    }
 }

}
