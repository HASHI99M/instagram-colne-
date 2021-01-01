import 'package:flutter/material.dart';
import 'package:instagram/provider/lang.dart';
import 'package:instagram/services/app_locale.dart';
import 'package:instagram/ultimate/helpers.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class SwitchLangWidget extends StatelessWidget {
  List<String> supportLang = ['العربية', 'English'];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(context),
      child: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocale.langCode == 'ar' ? 'العربية' : 'English',
              style: TextStyle(color: Colors.grey ,fontSize: 20 , fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  onClick(BuildContext context) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    showDialog(
        context: context,
        child: AlertDialog(
          content: Container(
            width: 1000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(getTranslated(context, 'select_lang')),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: getTranslated(context, 'search')),
                ),
                Expanded(
                    child: Container(
                      child: ListView.builder(
                        itemBuilder: (context, index) =>
                            ListTile(
                              title: Text(supportLang[index]),
                              trailing: AppLocale.langCode == 'ar' && index == 0
                                  ? Icon(
                                Icons.done,
                                color: Colors.blue,
                              )
                                  : AppLocale.langCode == 'en' && index == 1 ? Icon(
                                Icons.done,
                                color: Colors.blue,
                              ) : null,
                              onTap: () {
                                if (index == 0) {
                                  Provider.of<Lang>(context ,listen: false).changeLang('ar');
                                  preferences.setString('lang', 'ar');
                                }
                                else {
                                  Provider.of<Lang>(context , listen: false).changeLang('en');
                                  preferences.setString('lang', 'en');
                                }
                                Navigator.pop(context);
                              },
                            ),
                        itemCount: supportLang.length,
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
