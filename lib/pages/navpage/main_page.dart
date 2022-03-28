import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travellapp/pages/navpage/bar_item_page.dart';
import 'package:travellapp/pages/navpage/my_page.dart';
import 'package:travellapp/pages/navpage/search_page.dart';

import '../home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
  currentIndex=index;
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.4),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items:  [
          BottomNavigationBarItem(title:Text ("Home"), icon: Icon(Icons.apps),),
          BottomNavigationBarItem(title:Text ("Bar"), icon: Icon(Icons.bar_chart_rounded),),
          BottomNavigationBarItem(title:Text ("Search"), icon: Icon(Icons.search),),
          BottomNavigationBarItem(title:Text ("My"), icon: Icon(Icons.person),),
        ],
      ),
    );
  }
}
