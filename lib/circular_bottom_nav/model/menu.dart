import 'package:flutter/material.dart';

class MenuModel {
  String menuName;
  IconData icon;
  Widget page;

  MenuModel(String name, IconData icon, Widget page){
    this.menuName = name;
    this.icon = icon;
    this.page = page;
  }
}