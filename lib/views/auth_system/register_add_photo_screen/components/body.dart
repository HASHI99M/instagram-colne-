import 'package:flutter/material.dart';
import 'package:instagram/const.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_add_photo_screen/components/camera.dart';
import 'package:instagram/views/components/custom_button_login.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Camera()),
          SizedBox(
            height: 20,
          ),
          Text(
            getTranslated(context, 'add_pro_photo'),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              getTranslated(context, 'add_photo_note'),
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButtonLogin(
            disable: false ,
            text: getTranslated(context, 'add_photo_btn'),
            onClick: () {
              customDialog(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
              onPressed: () {
                addPhotoDialog(context);
              },
              child: Text(
                getTranslated(context, 'skip'),
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }


}
