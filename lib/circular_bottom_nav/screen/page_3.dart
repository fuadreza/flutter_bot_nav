import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  Page3({this.title});

  final String title;

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget.title),
      ),
    );
  }
}
