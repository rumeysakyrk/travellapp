import 'package:flutter/material.dart';

class largeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
   largeText({ this.size=30, required this.text,this.color=Colors.black, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
