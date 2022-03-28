import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travellapp/widgets/app_button.dart';
import 'package:travellapp/widgets/app_text.dart';
import 'package:travellapp/widgets/large_text.dart';
import 'package:travellapp/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenstar=4;
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/öylesine.jpg"),
                        fit: BoxFit.cover,
                      )
                  ),
                )),
            Positioned(
                top: 50,
                left:20,
                child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu), color: Colors.white, iconSize: 30,)
              ],
            )),
            Positioned(
                top:210,
                child: Container(
                  padding: const EdgeInsets.only(right: 20,left: 20, top:30),
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight:Radius.circular(40),
                      topLeft: Radius.circular(40)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          largeText(text: "Yosemite", size: 30, color: Colors.pink,),
                          largeText(text: "\$ 250",size: 25, color: Colors.pink.withOpacity(0.5),)
                        ],
                      ),
                      SizedBox(
                        height: 20,),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.pink.shade200,),
                          SizedBox(width: 5,),
                          appText(text: "USA, California", size:15, color: Colors.pink.shade200,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                             return Icon(Icons.star, color: index<gottenstar? Colors.pink:Colors.pink.shade100,size: 20,);
                            }),
                          ),
                          SizedBox(width: 5,),
                          appText(text: "(4.0)", size: 16,color: Colors.pink.shade200 )
                        ],
                      ),
                      SizedBox(height: 20,),
                      largeText(text: "People", size: 20,),
                      SizedBox(height: 10,),
                      appText(text: "Number of people in your group",size: 15,),
                      SizedBox(height: 10,),
                      Wrap(
                        children: List.generate(5, (index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                selectedIndex=index;
                              });
                            },
                            child: AppButtons(
                                size: 50,
                                color:selectedIndex==index?Colors.white:Colors.black,
                                backgroundcolor:selectedIndex==index?Colors.black: Colors.grey.shade300,
                                borderColor: selectedIndex==index?Colors.black:Colors.grey.shade300,
                            text: (index+1).toString(),
                            ),
                          );

                        }),

                      ),
                      SizedBox(height: 20,),
                      largeText(text: "Description",size:20),
                      appText(size: 15,text: "Yosemite National Park lies in the heart of California. It provides an excellent overview of all kinds of granite relief fashioned by glaciation.")
                      

                    ],
                  ),

            )),
            Positioned(
                bottom: 20,
                right: 20,
                left: 20,
                  child: Row(
              children: [
                  AppButtons(size: 60, color: Colors.white, backgroundcolor: Colors.white, borderColor: Colors.black,
                  isIcon: true, icon: Icons.favorite_border ),
                SizedBox(width: 20,),
                responsiveButton(
                  responsive: true,
                )
              ],
            ),
                )
          ],

        ),
      )
    );
  }
}
