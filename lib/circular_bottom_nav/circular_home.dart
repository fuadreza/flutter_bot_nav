import 'package:flutter/material.dart';

import 'circular_bottom_nav.dart';
import 'model/menu.dart';
import 'screen/page_1.dart';
import 'screen/page_2.dart';
import 'screen/page_3.dart';
import 'screen/page_4.dart';
import 'screen/page_5.dart';

class CircularHome extends StatefulWidget {
  @override
  _CircularHomeState createState() => _CircularHomeState();
}

class _CircularHomeState extends State<CircularHome> {
  // List<Widget> menus = [Page1(), Page2(), Page3(), Page4(), Page5()];

  List<MenuModel> menus = [
    MenuModel('Agenda', Icons.home, Page1(title : 'Page 1 eyoo')),
    MenuModel('Guide', Icons.collections_bookmark, Page2(title : 'Page 2 wasupp')),
    MenuModel('Chat', Icons.chat, Page3(title : 'Page 3 okayy')),
    MenuModel('Maps', Icons.location_pin, Page4(title : 'Page 4 yosh')),
    MenuModel('Profile', Icons.account_circle, Page5(title : 'Page 5 aayy')),
  ];

  @override
  Widget build(BuildContext context) {
    return CircularBottomNav(
      menus: menus,
    );
  }
}

