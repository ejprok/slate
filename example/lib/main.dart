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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Slate(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                  ),
                ),
                color: Colors.blue,
                rounding: 4,
              ),
              SizedBox(height: 20),
              Text("Slate"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 6,
                child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Icon(Icons.play_arrow, size: 50),
                  ),
                ),
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              Text("Standard Card"),
            ],
          ),
        ],
      ),
    );
  }
}
