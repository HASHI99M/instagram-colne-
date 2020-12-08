import 'package:flutter/material.dart';
import 'package:instagram/views/profile_screen/components/photo_profile_card.dart';
class InformationProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PhotoProfileCard(),
              SizedBox(
                width: 50,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '16',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '101',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '135',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
              width: double.infinity,
              child: OutlineButton(
                onPressed: () {},
                child: Text('Edit Profile'),
                highlightedBorderColor: Colors.grey,
              ))
        ],
      ),
    );
  }
}