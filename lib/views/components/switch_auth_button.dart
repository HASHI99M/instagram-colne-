import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';

class SwitchAuthButton extends StatelessWidget {
  final Function onClick;
  final bool login;

  const SwitchAuthButton({Key key, this.onClick, this.login = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(border: Border.all(width: .5, color: Colors.grey)),
          child: RichText(
              text: TextSpan(
                  text: login
                      ? getTranslated(context, 'switch_auth_btn')
                      : getTranslated(context, 'switch_auth_btn2'),
                  style: TextStyle(color: Colors.grey),
                  children: [
                TextSpan(
                    text: login
                        ? getTranslated(context, 'login')
                        : getTranslated(context, 'sign_up'),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ]))),
    );
  }
}
