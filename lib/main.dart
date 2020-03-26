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
        body: Container(
          color: Colors.blue,
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.cake, color: Colors.white, size: 50,),
              Icon(Icons.cake, color: Colors.white, size: 100,),
              Icon(Icons.cake, color: Colors.white, size: 150,),
            ],
          ),
        ),
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
