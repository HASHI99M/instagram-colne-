import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'file:///C:/Users/HASHIM/AndroidStudioProjects/instagram/lib/views/components/custom_button_login.dart';
import 'package:instagram/views/auth_system/register_screen/components/textfield_register.dart';

import 'image_profile.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isPhone = true;
  bool valueEmptyPhone = true;
  bool valueEmptyEmail = true;
  TextEditingController emailController;
  TextEditingController phoneController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: ImageProfile()),
          SizedBox(
            height: 20,
          ),
          switchTab(),
          SizedBox(
            height: 15,
          ),
          isPhone ? contentPhone() : contentEmail()
        ],
      ),
    );
  }

  Widget switchTab() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isPhone = true;
                });
              },
              child: Container(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(getTranslated(context, 'phone'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: isPhone ? Colors.black : Colors.grey)),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: .9,
                        color: isPhone ? Colors.black : Colors.grey,
                      ))
                ],
              )),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isPhone = false;
                });
              },
              child: Container(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(getTranslated(context, 'email'),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: isPhone ? Colors.grey : Colors.black)),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: isPhone ? Colors.grey : Colors.black,
                        height: .9,
                      ))
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }

  Widget contentEmail() {
    return Column(
      children: [
        TextFieldRegister(
          hint: getTranslated(context, 'email'),
          controller: emailController,
          textInputType: TextInputType.text,
          onClick: () {
            emailController.clear();
            setState(() {
              valueEmptyEmail = true;
            });
          },
          onChange: (value) {
            setState(() {
              if (value.toString().isNotEmpty) {
                valueEmptyEmail = false;
              } else {
                valueEmptyEmail = true;
              }
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        CustomButtonLogin(
          text: getTranslated(context, 'next'),
          onClick: () {},
          valuesEmpty: valueEmptyEmail,
        )
      ],
    );
  }

  Widget contentPhone() {
    return Column(
      children: [
        TextFieldRegister(
          hint: getTranslated(context, 'phone'),
          controller: phoneController,
          textInputType: TextInputType.phone,
          onClick: () {
            phoneController.clear();
            setState(() {
              valueEmptyPhone = true;
            });
          },
          onChange: (value) {
            setState(() {
              if (value.toString().isNotEmpty) {
                valueEmptyPhone = false;
              } else {
                valueEmptyPhone = true;
              }
            });
          },
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          getTranslated(context, 'helper_txt'),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 15,
        ),
        CustomButtonLogin(
          text: getTranslated(context, 'next'),
          onClick: () {},
          valuesEmpty: valueEmptyPhone,
        )
      ],
    );
  }
}
