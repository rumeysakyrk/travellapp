import 'package:flutter/material.dart';

class appText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  appText({ this.size=16, required this.text,this.color=Colors.black54, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,

      ),
    );
  }
}
