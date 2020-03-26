import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _controller.animateTo(
            1000,
            duration: Duration(seconds: 2),
            curve: Curves.bounceIn,
          ),
        ),
        body: ListView.builder(
          controller: _controller,
          itemBuilder: (context, idx) {
            print('constructing container: $idx');
            return Container(
              height: 100,
              color: Colors.pink,
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
            color: Colors.pink,
            margin: EdgeInsets.all(20),
            height: 100,
            child: Text('$v'),
          ))
      .toList();
}
