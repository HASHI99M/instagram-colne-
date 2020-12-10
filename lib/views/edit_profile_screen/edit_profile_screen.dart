import 'package:flutter/material.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/edit_profile_screen/components/body.dart';



class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(onPressed: (){}, child: Icon(Icons.close , size: 30,)),
        actions: [
          FlatButton(onPressed: (){}, child: Icon(Icons.done , size: 30, color: Colors.blueAccent,) , minWidth: 50,),

        ],
        centerTitle: false,
        title: Text(
            getTranslated(context, 'edit_profile'),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}




