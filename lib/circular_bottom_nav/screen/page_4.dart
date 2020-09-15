import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  Page4({this.title});

  final String title;

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget.title),
      ),
    );
  }
}
