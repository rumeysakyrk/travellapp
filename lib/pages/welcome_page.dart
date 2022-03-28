import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travellapp/widgets/app_text.dart';
import 'package:travellapp/widgets/large_text.dart';
import 'package:travellapp/widgets/responsive_button.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  List images=["welcome_one.png", "welcome_two.png", "welcome_three.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){
            return  Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/"+images[index]),
                  fit: BoxFit.cover,
              ),
            ),
              child: Container(
              margin: EdgeInsets.only(top: 150, left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      largeText(text: "Trips"),
                      appText(text: "Mountain", size: 30,),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: appText(text: "Mountain hikes give you an incredible sense of freedom along with endurance test. ",
                        color: Colors.black45, size:14),
                      ),
                      SizedBox(height: 30,),
                      responsiveButton(width: 100, responsive: false,),

                    ],
                  ),
                  Column(

                    children: List.generate(3, (indexDots){
                      return Container(
                        margin: const EdgeInsets.only(bottom:4),
                      width: 8,
                        height: index==indexDots? 25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index==indexDots? Colors.black: Colors.black45.withOpacity(0.4),
                        ),
                      );

                    }
                    )
                  )
                ]
              )
              )
            );
          })
    );
  }
}

