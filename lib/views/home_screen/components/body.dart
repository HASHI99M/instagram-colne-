import 'package:flutter/material.dart';
import 'package:instagram/views/home_screen/components/post_card.dart';
import 'package:instagram/views/home_screen/components/story_card.dart';
import 'package:instagram/views/home_screen/components/you_stroty_card.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 107,
              padding: EdgeInsets.only(top: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) =>
                index == 0 ? YouStoryCard() : StoryCard(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => PostCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
