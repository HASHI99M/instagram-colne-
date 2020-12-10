import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/ultimate/helpers.dart';

class PostCard extends StatelessWidget {
  final Function clickSetting,
      clickLike,
      clickComments,
      clickShare,
      clickSavePost,
      doubleClickLike,
      clickComments2,
      clickMore;
  final String imageURL;
  final String timePost, location, descriptionPost;
  final List comments, friendsLikePost;

  const PostCard(
      {Key key,
      this.clickSetting,
      this.imageURL,
      this.clickLike,
      this.clickComments,
      this.clickShare,
      this.clickSavePost,
      this.doubleClickLike,
      this.timePost = '16 min ago',
      this.location = 'Palestine',
      this.clickComments2,
      this.descriptionPost = 'This Post',
      this.clickMore,
      this.comments,
      this.friendsLikePost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 53,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffDDDFE1),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        'CR7',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: clickSetting,
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: doubleClickLike,
            child: Container(
              width: double.infinity,
              height: 247,
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: NetworkImage(imageURL)
                // ),
                color: Color(0xffDDDFE1),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: clickLike,
                          child: SvgPicture.asset('assets/icons/ic_love.svg')),
                      SizedBox(
                        width: 18,
                      ),
                      GestureDetector(
                          onTap: clickComments,
                          child: SvgPicture.asset('assets/icons/ic_chat.svg')),
                      SizedBox(
                        width: 18,
                      ),
                      GestureDetector(
                          onTap: clickShare,
                          child: SvgPicture.asset('assets/icons/ic_share.svg')),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: clickSavePost,
                    child: SvgPicture.asset('assets/icons/ic_bookmark.svg')),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                        color: Color(0xffDDDFE1),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: RichText(
                        text: TextSpan(children: [
                          friendsLikePost != null
                              ? friendsLikePost.map(
                                  (e) => TextSpan(
                                      text: 'e',
                                      children: [
                                        TextSpan(
                                            text: 'and ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16)),
                                      ],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          fontSize: 16)),
                                )
                              : TextSpan(),
                          TextSpan(
                              text: getTranslated(context, 'others'),
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 16)),
                          TextSpan(
                              text:  ' '+ getTranslated(context, 'like_this'),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                        ]),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        descriptionPost.length > 150
                            ? '${descriptionPost.substring(0, 150)}'
                            : '$descriptionPost',
                        style: TextStyle(fontSize: 16),
                      ),
                      GestureDetector(
                          onTap: clickMore,
                          child: descriptionPost.length > 150
                              ? Text(
                                  '...more',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                )
                              : Text(''))
                    ],
                  ),
                ),
                comments != null
                    ? GestureDetector(
                        onTap: clickComments2,
                        child: Text(
                          comments != null
                              ? 'See all ${comments.length} comments'
                              : '',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      )
                    : Container(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text('$timePost',
                          style: TextStyle(fontSize: 14, color: Colors.grey)),
                      SizedBox(
                        width: 14,
                      ),
                      Text('$location',
                          style: TextStyle(fontSize: 14, color: Colors.black))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
