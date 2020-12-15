import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/components/custom_button.dart';
import 'package:instagram/views/components/custom_textfield.dart';

import '../../../const.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 14,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: kColor3,
            ),
            SizedBox(
              height: 14,
            ),
            Text(
                getTranslated(context, 'change_profile_photo'),
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  CustomTextFailed(
                    hintText: getTranslated(context, 'name'),
                    labelText: getTranslated(context, 'name'),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CustomTextFailed(
                    hintText: getTranslated(context, 'username'),
                    labelText: getTranslated(context, 'username'),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CustomTextFailed(
                    hintText: getTranslated(context, 'website'),
                    labelText: getTranslated(context, 'website'),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CustomTextFailed(
                    hintText: getTranslated(context, 'bie'),
                    labelText: getTranslated(context, 'bie'),
                    maxLine: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 21,
            ),
            CustomButton(
              onclick: () {},
              text: Text(
                getTranslated(context, 'switch_btn'),
                style: TextStyle(color: Colors.blueAccent, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            CustomButton(
              onclick: () {},
              text: Text(
                getTranslated(context, 'pro_btn'),
                style: TextStyle(color: Colors.blueAccent, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
