import 'package:flutter/material.dart';

class MyPixel extends StatelessWidget {
  final innerColor;
  final outerColor;
  final child;
  const MyPixel({this.innerColor,this.outerColor,this.child,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(1.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        padding: EdgeInsets.all(4.0),
        color:outerColor,
        child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        padding: EdgeInsets.all(4.0),
        color:innerColor,
        child: Center(child: child,)
      ),
    ),
      ),
    ),
    );
  }
}
