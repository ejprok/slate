import 'package:flutter/material.dart';
import 'package:slate/slate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slate Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Slate(
              child: Container(
                width: 100,
                height: 100,
                child: Center(
                  child: Icon(Icons.play_arrow, size: 50),
                ),
              ),
              color: Colors.blue,
              rounding: 30,
            ),
          ),
          Center(
            child: Card(
              elevation: 6,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                width: 100,
                height: 100,
                child: Center(
                  child: Icon(Icons.play_arrow, size: 50),
                ),
              ),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
