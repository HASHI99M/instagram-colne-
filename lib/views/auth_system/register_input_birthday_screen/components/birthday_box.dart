import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
class BirthdayBox extends StatelessWidget {
  final String birthday;
  final String yearsOld;
  const BirthdayBox({Key key, this.birthday, this.yearsOld,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14 , vertical: 13),
      decoration: BoxDecoration(
        color: Color(0xfffafafa),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xffdadada), width: 1.4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(birthday ),
          Text('$yearsOld  ${getTranslated(context, 'years_old')}', style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
  }
}