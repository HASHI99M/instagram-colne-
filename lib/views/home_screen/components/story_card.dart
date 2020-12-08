import 'package:flutter/material.dart';
class StoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffFAAB48), width: 2.2),
                  shape: BoxShape.circle),
              child: Container(
                height: 54,
                width: 54,
                decoration: BoxDecoration(
                    color: Color(0xffDDDFE1), shape: BoxShape.circle),
              )),
          SizedBox(
            height: 7,
          ),
          Text(
            'Hashim',
          )
        ],
      ),
    );
  }
}