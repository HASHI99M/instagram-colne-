import 'package:flutter/material.dart';
class LoginFacebookButton extends StatelessWidget {
  final Function onClick;

  const LoginFacebookButton({Key key, this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: 200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.face , color: Colors.blue,size: 28,),
            SizedBox(width: 2,),
            Text('Login in With Facebook' , style: TextStyle(color: Colors.blue , fontWeight: FontWeight.bold , fontSize: 15),)
          ],
        ),
      ),
    );
  }
}