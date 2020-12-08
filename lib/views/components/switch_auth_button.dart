import 'package:flutter/material.dart';
class SwitchAuthButton extends StatelessWidget {
  final Function onClick;
  final bool login;
  const SwitchAuthButton({Key key, this.onClick, this.login = false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(width: .5 , color: Colors.grey)
          ),
          child: RichText(
              text: TextSpan(
                  text: login ?  'Already have an account ? ' :'Don\'t have an account ? ',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: login ? 'Log in'  :'Sign Up',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ]))),
    );
  }
}
