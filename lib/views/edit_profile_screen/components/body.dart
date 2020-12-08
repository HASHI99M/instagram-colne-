import 'package:flutter/material.dart';
import 'package:instagram/views/components/custom_button.dart';
import 'package:instagram/views/components/custom_textfailed.dart';

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
              'Change Profile Photo',
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
                    hintText: 'Name',
                    labelText: 'Name',
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CustomTextFailed(
                    hintText: 'Username',
                    labelText: 'Username',
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CustomTextFailed(
                    hintText: 'Website',
                    labelText: 'Website',
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CustomTextFailed(
                    hintText: 'Bio',
                    labelText: 'Bio',
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
                'Switch to Professional Account',
                style: TextStyle(color: Colors.blueAccent, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            CustomButton(
              onclick: () {},
              text: Text(
                'Personal Information Settings',
                style: TextStyle(color: Colors.blueAccent, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
