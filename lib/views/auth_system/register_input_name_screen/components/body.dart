import 'package:flutter/material.dart';
import 'package:instagram/provider/auth.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_input_birthday_screen/register_input_birthday_screen.dart';
import 'package:instagram/views/components/custom_button_login.dart';
import 'package:instagram/views/components/custom_textfield_login.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool savePass = false , disableBtn = true;
  String name , pass;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            getTranslated(context, 'name_and_password'),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFieldLogin(
            onChanged: (value){
              setState(() {
                name = value;
                if(name.isNotEmpty && pass.isNotEmpty && pass.length >= 6){
                  disableBtn =false;
                }else{
                  disableBtn = true;
                }
              });
            },
            hint: getTranslated(context, 'full_name'),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFieldLogin(
            onChanged: (value){
              setState(() {
                pass = value;
                if(name.isNotEmpty && pass.isNotEmpty && pass.length >= 6){
                  disableBtn =false;
                }else{
                  disableBtn = true;
                }
              });
            },
            showEye: false,
            hint: getTranslated(context, 'hint_password'),
            isPassword: true,
            showPassword: true,
            textInputType: TextInputType.visiblePassword,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: savePass,
                  onChanged: (value) {
                    setState(() {
                      savePass = value;
                    });
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                Text(
                  getTranslated(context, 'save_pass'),
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CustomButtonLogin(
            text: getTranslated(context, 'continue_and_sync'),
            onClick: _clickSync,
            disable: disableBtn,
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            onPressed: disableBtn ?  null : _clickWithoutSync,
            child: Text(
              getTranslated(context, 'continue_without_sync'),
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  _clickSync(){
    Provider.of<Auth>(context , listen: false).setValues(fullName: name , password: pass);
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterInputBirthdayScreen(),));
  }
  _clickWithoutSync(){
    
  }
}
