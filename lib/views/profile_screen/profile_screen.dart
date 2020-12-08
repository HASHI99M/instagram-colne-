import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/size_config.dart';
import 'package:instagram/views/profile_screen/components/body.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'HASHI99M',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 4,
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 20,
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14, left: 40),
            child: Icon(Icons.menu_sharp),
          ),
        ],
      ),
      body: Body(),
    );
  }
}


