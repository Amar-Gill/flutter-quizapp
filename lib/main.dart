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
        appBar: AppBar(
          title: Text('My cool app'),
        ),
        body: Center(
          child: Icon(Icons.cake),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        drawer: Drawer(),
      ),
    );
  }
}

class MyFirstWidget extends StatefulWidget {
  // properties here are immutable - can override in instantiation calls
  final Color color;

  // initialize attributes of widget
  MyFirstWidget({Key key, this.color = Colors.red}) : super(key: key);

  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  // define mutable state here
  int count = 0;

  // lifecycle hooks
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text('$count'),
        onPressed: () {
          setState(
            () {
              count++;
            },
          );
        },
      ),
    );
  }
}
