import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
class FacebookLoginButton extends StatelessWidget {
  final Function onClick;

  const FacebookLoginButton({Key key, this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: onClick,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.blue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.face , color: Colors.white),
              SizedBox(width: 3,),
              Text(getTranslated(context, 'facebook_btn') , style: TextStyle(color: Colors.white),),


            ],
          ),
        ),
      ),
    );
  }
}