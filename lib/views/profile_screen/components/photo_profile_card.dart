import 'package:flutter/material.dart';
class PhotoProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 80,
                width: 80,
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
            'HASHI99M',
          )
        ],
      ),
    );
  }
}