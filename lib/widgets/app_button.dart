import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travellapp/widgets/app_text.dart';
import 'package:travellapp/widgets/large_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundcolor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

   AppButtons({Key? key,
     this.isIcon=false,
     this.text, this.icon,required this.size, required this.color, required this.backgroundcolor, required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5,left: 5),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
          borderRadius: BorderRadius.circular(10),
          color: backgroundcolor
      ),
      child: isIcon==false? Center(child: largeText(text: text!, size:15,color:color)): Center(child: Icon(icon)),
    );
  }
}
