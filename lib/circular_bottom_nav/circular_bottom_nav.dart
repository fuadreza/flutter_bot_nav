import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bot_nav/circular_bottom_nav/model/menu.dart';

class CircularBottomNav extends StatefulWidget {
  CircularBottomNav({this.menus});
  final List<MenuModel> menus;

  @override
  _CircularBottomNavState createState() => _CircularBottomNavState();
}

class _CircularBottomNavState extends State<CircularBottomNav> {
  int selectedPos = 0;
  double bottomNavBarHeight = 60;
  List<TabItem> tabItems = [];
  CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
    for (var menu in widget.menus) {
      var item = TabItem(menu.icon, menu.menuName, Colors.blue,
          labelStyle:
              TextStyle(color: Colors.blue, fontWeight: FontWeight.bold));
      tabItems.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            child: bodyContainer(),
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bodyContainer() {
    switch (selectedPos) {
      default:
        return widget.menus[selectedPos].page;
    }

    /*Color selectedColor = tabItems[selectedPos].circleColor;
    String slogan;*/
    /*switch (selectedPos) {
      case 0:
        slogan = "Familly, Happiness, Food";
        return Page1();
        break;
      case 1:
        slogan = "Find, Check, Use";
        return Page2();
        break;
      case 2:
        slogan = "Receive, Review, Rip";
        return Page1();
        break;
      case 3:
        slogan = "Noise, Panic, Ignore";
        return Page2();
        break;
      case 4:
        slogan = "HEY, Panic, Ignore";
        return Page1();
        break;
    }*/

    // return Page1();
    /*return GestureDetector(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: selectedColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello Boy'),
            Page1(),
            */ /*Center(
              child: Text(
                slogan,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),*/ /*
          ],
        ),
      ),
      onTap: () {
        if (_navigationController.value == tabItems.length - 1) {
          _navigationController.value = 0;
        } else {
          _navigationController.value++;
        }
      },
    );*/
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) {
        setState(() {
          this.selectedPos = selectedPos;
          print(_navigationController.value);
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}
