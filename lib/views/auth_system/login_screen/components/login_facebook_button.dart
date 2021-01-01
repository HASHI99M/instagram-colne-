import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/ultimate/helpers.dart';
class LoginFacebookButton extends StatelessWidget {
  final Function onClick;

  const LoginFacebookButton({Key key, this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.face , color: Colors.blue,size: 28,),
            Image.asset('assets/icons/ic_facebook.png' , width: 25,),
            SizedBox(width: 5,),
            Text(getTranslated(context, 'login_facebook') , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold , fontSize: 15),)
          ],
        ),
      ),
    );
  }
}