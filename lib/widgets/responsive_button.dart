import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travellapp/widgets/app_text.dart';
class responsiveButton extends StatelessWidget {
  bool? responsive;
  double? width;
   responsiveButton({Key? key, this.width, this.responsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: responsive==true? double.maxFinite:width,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black
        ),
        child: Container(
          margin: const EdgeInsets.only(right: 15, left: 15),
          child: Row(
            mainAxisAlignment: responsive==true?MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
            children: [
              responsive==true? appText(text: "Book Trip Now", color: Colors.white,):Container(),
            Image.asset("images/neon.jpg",),
          ],),
        ),
      ),
    );
  }
}
