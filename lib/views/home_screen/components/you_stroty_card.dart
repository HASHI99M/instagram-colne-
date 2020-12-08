import 'package:flutter/material.dart';
class YouStoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 62,
                width: 62,
                decoration: BoxDecoration(
                    color: Color(0xffDDDFE1), shape: BoxShape.circle),
              ),
              Positioned(
                  bottom: -3,
                  right: -3,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add_circle,
                        color: Colors.blueAccent,
                      )))
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Your story',
          )
        ],
      ),
    );
  }
}