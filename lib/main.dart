import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, idx) {
            print('constructing container: $idx');
            return Container(
              height: 100,
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              child: Text('$idx'),
            );
          },
        ),
      ),
    );
  }
}

List<Widget> _cards() {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9]
      .map((v) => Container(
            color: Colors.blue,
            margin: EdgeInsets.all(20),
            width: 100,
            child: Text('$v'),
          ))
      .toList();
}
