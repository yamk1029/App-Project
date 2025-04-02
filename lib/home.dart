import 'package:flutter/material.dart';
import 'package:project/bottomnabhomescreen.dart';
import 'package:project/chatsection.dart/msg.dart';
import 'package:project/mycourses/ongoing.dart';
import 'package:project/profile/profilescreen.dart';

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
      
       type: BottomNavigationBarType.fixed,
        items:[
        BottomNavigationBarItem(icon: Icon(Icons.dashboard,),
        label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard,),
        label: " about"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_outlined),
        label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(Icons.person,),
        label: "profile"),

        ] 
      ),
    );
  }

    Widget bottomnav() {
      switch (selectedindex) {
        case 0 : 
         return Homescreen();
         case 1 :
         return Ongoing();
         case 2 :
         return Msg();         
        default :
         return ProfileScreen();
         }
       }
}