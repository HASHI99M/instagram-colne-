import 'package:flutter/material.dart';
import 'package:instagram/provider/auth.dart';
import 'package:instagram/size_config.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_change_username_screen/register_change_username_screen.dart';
import 'package:instagram/views/components/custom_button_login.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double defaultSize = SizeConfig.defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(getTranslated(context, 'welcome') +"\n ${Provider.of<Auth>(context).username}",textAlign: TextAlign.center ,  style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),),
              SizedBox(height: defaultSize * .5,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: defaultSize),
                child: Text(getTranslated(context, 'welcome_note') ,textAlign: TextAlign.center , style: TextStyle(fontSize: 15, color: Colors.grey),),
              ),
              SizedBox(height: defaultSize*2,),
              CustomButtonLogin(
                disable: false,
                text: getTranslated(context, 'next'),
                onClick: (){},
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterChangeUsernameScreen(),));
                  },
                  child:
                  Text(getTranslated(context, 'change_username').toLowerCase() , style: TextStyle(color: Colors.blue),))
            ],
          ),
          Align(alignment: Alignment.bottomCenter,child: Padding(
            padding:  EdgeInsets.symmetric(vertical :defaultSize*2 , horizontal: defaultSize * .1),
            child: Text(getTranslated(context, 'welcome_note2') , textAlign: TextAlign.center, style: TextStyle(color: Colors.grey , fontWeight: FontWeight.bold),),
          ))
        ],
      ),
    );
  }
}
