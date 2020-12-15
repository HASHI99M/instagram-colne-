import 'package:flutter/material.dart';
import 'package:instagram/services/authentication_by_firebase.dart';
import 'package:instagram/size_config.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/components/or_widget.dart';

import '../../../components/custom_button_login.dart';
import '../../../components/custom_textfield_login.dart';
import 'login_facebook_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize = SizeConfig.defaultSize;
  bool showPassword = true;
  String valEmail , valPassword;
  bool disableBtn = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize*2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/logo.png',
            width: defaultSize *20,
            height: defaultSize *10,
            fit: BoxFit.contain,
          ),
          CustomTextFieldLogin(
            hint: getTranslated(context, 'hint_username'),
            onChanged: (value) {
              setState(() {
                valEmail = value;
                if (valPassword.isEmpty || valEmail.isEmpty) {
                  disableBtn = true;
                } else {
                  disableBtn = false;
                }
              });
            },
          ),
          SizedBox(
            height: defaultSize*2,
          ),
          CustomTextFieldLogin(
            hint: getTranslated(context, 'hint_password'),
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
                valPassword = value;
                if (valPassword.isEmpty || valEmail.isEmpty) {
                  disableBtn = true;
                } else {
                  disableBtn = false;
                }
              });
            },
          ),
          SizedBox(
            height: defaultSize*2,
          ),
          CustomButtonLogin(
            text: getTranslated(context, 'btn_login'),
            onClick: onClickLogin,
            disable: disableBtn,
          ),
          SizedBox(
            height: defaultSize*2,
          ),
          RichText(
            textAlign: TextAlign.center,
              text: TextSpan(
                  text: getTranslated(context, 'text_helper1'),
                  style: TextStyle(color: Colors.grey[600]),
                  children: [
                TextSpan(
                    text: getTranslated(context, 'text_helper2'),
                    style: TextStyle(color: Colors.blueGrey))
              ])),
          SizedBox(
            height: defaultSize*2,
          ),
          OR(),
          SizedBox(
            height: defaultSize*2,
          ),
          LoginFacebookButton(
            onClick: () {},
          )
        ],
      ),
    );
  }

  void onClickLogin() {
    AuthenticationByFirebase authenticationByFirebase = AuthenticationByFirebase();
    authenticationByFirebase.signIn(null, (e){
      print(e.toString());
    } , username: 'Hashim' , phone: '0599652314' , password: valPassword , email: valEmail );
  }
}


