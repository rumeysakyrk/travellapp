import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travellapp/widgets/app_text.dart';
import 'package:travellapp/widgets/large_text.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images={
    "images/ballooning.jpg":"Ballooning",
    "images/hiking.jpg":"Hiking",
    "images/skating.jpg":"Skating",
    "images/kayaking.jpg":"Kayaking"
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                size: 30,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: largeText(text: "Discover"),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator:
                  CircleTabIndicator(color: Colors.blueAccent, radius: 4),
              tabs: [
                Tab(
                  text: "Places",
                ),
                Tab(
                  text: "Inspiration",
                ),
                Tab(
                  text: "Emotions",
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 250,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20),
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 20, right: 15),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/öylesine.jpg"),
                            fit: BoxFit.cover)),
                  );
                },
              ),
              Text("hi"),
              Text("hi")
            ],
          ),
        ),
        SizedBox(
          height: 10,),
        Container(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              largeText(
                text: "Explore more",
                size: 22,
              ),
              appText(
                text: "See all",
                size: 14,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,),
        Container(
          padding: const EdgeInsets.only(left:20,top:10),
          height: 120,
          width: double.maxFinite,
          child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(right:50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(images.keys.elementAt(index)),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height:10,),
                    Container(
                      child: appText(text: images.values.elementAt(index),size: 14,color: Colors.black,),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
