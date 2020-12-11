import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:instagram/views/auth_system/register_input_birthday_screen/components/birthday_box.dart';
import 'package:instagram/views/components/custom_button_login.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String birthday;
  int yearsOld = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Center(child: SvgPicture.asset('assets/icons/ic_birthday.svg')),
            SizedBox(
              height: 20,
            ),
            Text(
              getTranslated(context, 'add_birthday'),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              getTranslated(context, 'note_birthday'),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: BirthdayBox(
                birthday: birthday ?? 'December 10 , 2019',
                yearsOld: yearsOld.toString(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomButtonLogin(
                text: getTranslated(context, 'pick_birthday'),
                valuesEmpty: false,
                onClick: () {
                  pickBirthday(context);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomButtonLogin(
                text: getTranslated(context, 'next'),
                valuesEmpty: !(yearsOld >= 9),
                onClick: () {

                },
              ),
            )
          ],
        ));
  }

  pickBirthday(BuildContext context) {
    String month;
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1920),
            lastDate: DateTime(2100))
        .then((value) {
      try {
        String _month = value.month.toString() ?? '1';
        switch (_month) {
          case '1':
            month = 'January';
            break;
          case '2':
            month = 'February';
            break;
          case '3':
            month = 'March';
            break;
          case '4':
            month = 'April';
            break;
          case '5':
            month = 'May';
            break;
          case '6':
            month = 'June';
            break;
          case '7':
            month = 'July';
            break;
          case '8':
            month = 'August';
            break;
          case '9':
            month = 'September';
            break;
          case '10':
            month = 'October';
            break;
          case '11':
            month = 'November';
            break;
          case '12':
            month = 'December';
            break;
        }
      } catch (e) {
        print(e.toString());
      }
      setState(() {
        try {
          birthday = month +
              ' ' +
              value.day.toString() +
              ' , ' +
              value.year.toString();
          yearsOld = (DateTime.now().year - value.year);
        } catch (e) {
          print(e.toString());
        }
      });
    });
  }
}
