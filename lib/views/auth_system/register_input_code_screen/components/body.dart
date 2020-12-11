import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/components/custom_button_login.dart';
import 'package:instagram/views/components/custom_textfield_login.dart';

class Body extends StatefulWidget {
  final String emailOrPhone;

  const Body({Key key, this.emailOrPhone}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
          CustomTextFieldLogin(hint: getTranslated(context, 'conf_code'),textInputType: TextInputType.number,),
          SizedBox(height: 15,),
          CustomButtonLogin(text: getTranslated(context, 'next'),)
        ],
      ),
    );
  }
}
