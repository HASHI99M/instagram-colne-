import 'package:flutter/material.dart';
import 'package:instagram/views/profile_screen/components/photo_profile.dart';
import 'information_profile.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InformationProfile(),
            PhotoProfile(),
          ],
        ),
      ),
    );
  }
}
