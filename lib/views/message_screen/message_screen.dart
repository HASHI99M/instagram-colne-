import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/message_screen/components/body.dart';


class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        leading: FlatButton(
            onPressed: () {},
            child: SvgPicture.asset('assets/icons/ic_arrow_back.svg')),
        title: Text(
          getTranslated(context, 'direct'),
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          SvgPicture.asset('assets/icons/ic_video.svg'),
          SizedBox(
            width: 25,
          ),
          SvgPicture.asset(
            'assets/icons/ic_note.svg',
            height: 20,
          ),
          SizedBox(
            width: 14,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.grey[50], boxShadow: [
          BoxShadow(color: Colors.black, offset: Offset(0, 1), blurRadius: 2)
        ]),
        alignment: Alignment.center,
        height: 47,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/ic_camera.svg',
              height: 22,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              getTranslated(context, 'camera'),
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Body(),
    );
  }


}
