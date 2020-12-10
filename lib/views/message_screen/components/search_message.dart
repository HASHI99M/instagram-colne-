import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
class SearchMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.grey[300])
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.search , color: Colors.grey,size: 30,),
          SizedBox(width: 7,),
          Text(getTranslated(context, 'search') , style: TextStyle(fontSize: 16 , color: Colors.grey),)
        ],
      ),
    );
  }
}