import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CardMessage extends StatelessWidget {
 final String name;
 final String imageURL;
  const CardMessage({Key key, this.name = 'Hashim O. Masry', this.imageURL}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
      ),
      title: Text('$name'),
      subtitle:Text('Active 48m ago'),
      trailing: SvgPicture.asset('assets/icons/ic_camera3.svg' ,  color: Colors.grey,),
    );
  }
}