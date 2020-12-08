import 'package:flutter/material.dart';
import 'package:instagram/views/home_screen/home_screen.dart';
import 'package:instagram/views/notification_screen/notification_screen.dart';
import 'package:instagram/views/profile_screen/profile_screen.dart';
import 'package:instagram/views/search_screen/search_screen.dart';

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});

  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == "Page1")
      child = HomeScreen();
    else if (tabItem == "Page2")
      child = SearchScreen();
    else if (tabItem == "Page3")
      child = Container();
    else if (tabItem == "Page4")
      child = NotificationScreen();
    else if (tabItem == "Page5") child = ProfileScreen();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
