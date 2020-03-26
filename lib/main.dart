import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                border: Border.all(width: 5),
                boxShadow: [
                  BoxShadow(offset: Offset(40, 40), color: Colors.pink),
                  BoxShadow(offset: Offset(20, 20), color: Colors.yellow),
                ],
                gradient: RadialGradient(colors: [Colors.yellow, Colors.pink])),
          ),
        ),
      ),
    );
  }
}
