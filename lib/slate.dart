library slate;

import 'package:flutter/material.dart';

class Slate extends StatelessWidget {
  final Widget child;
  final Color color;
  final double rounding;
  Slate({@required this.child, @required this.color, this.rounding})
      : assert(child != null);

  @override
  Widget build(BuildContext context) {
    const Color lowerShadow = Colors.black26;
    const Color upperShadow = Color.fromARGB(30, 255, 255, 255);

    return Container(
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.all(Radius.circular(this.rounding)),
        boxShadow: [
          BoxShadow(
              color: lowerShadow,
              offset: Offset(3.0, 3.0),
              blurRadius: 5.0,
              spreadRadius: 1.0),
          BoxShadow(
              color: upperShadow,
              offset: Offset(-3.0, -3.0),
              blurRadius: 5.0,
              spreadRadius: 1.0),
        ],
      ),
      child: this.child,
    );
  }
}
