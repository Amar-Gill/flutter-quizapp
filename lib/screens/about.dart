import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('about'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Leet FlutterFire Quiz App v 1.0',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Column(
              children: <Widget>[
                Text('Developer: Amar S. Gill'),
                Text('Source: github.com/Amar-Gill/flutter-quizapp'),
                Text('Reference: fireship.io/courses/flutter-firebase'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
