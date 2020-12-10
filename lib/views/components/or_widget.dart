import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
class OR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
              color: Colors.grey,
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(getTranslated(context, 'or')),
        ),
        Expanded(
            child: Divider(
              color: Colors.grey,
            )),
      ],
    );
  }
}