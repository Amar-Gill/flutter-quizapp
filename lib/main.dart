import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/slideshow': (context) => SlideshowScreen()
      },
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: FlatButton(
          child: Text('Go'),
          color: Colors.red,
          onPressed: () {
            Navigator.pushNamed(context, '/slideshow');
          },
        ),
      ),
    );
  }
}

class SlideshowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slideshow'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: null,
      ),
    );
  }
}
