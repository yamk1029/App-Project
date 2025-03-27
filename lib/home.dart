import 'package:flutter/material.dart';
import 'package:project/bottomnabhomescreen.dart';
import 'package:project/profile/profilescreen.dart';
import 'package:project/recent.dart';


class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
     }

class _HomeState extends State<Home> {
int selectedindex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: bottomnav(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  selectedindex,
        onTap: (index) { 
          setState(() {
          selectedindex = index;
        });
       },
      
        items:[
        BottomNavigationBarItem(icon: Icon(Icons.dashboard,),
        label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.person,),
        label: "profile"),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard,),
        label: " about"
          ),
        ] 
      ),
    );
  }

    Widget bottomnav() {
      switch (selectedindex) {
        case 0 : 
         return Homescreen();
        case 1 :
         return ProfileScreen();
        default :
         return Recent();
         }
       }
}