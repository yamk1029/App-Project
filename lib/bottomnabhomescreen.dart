import 'package:flutter/material.dart';
import 'package:project/dcbp.dart';
import 'package:project/profile/profilescreen.dart';
import 'package:project/recent.dart';
import 'package:project/trending_course.dart';
import 'package:project/upper_portion.dart';

class Homescreen extends StatefulWidget { 
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
    void OnSelected(BuildContext context, int item){
    switch(item){
      case 0:
       print("hello");
       break;
      case 1:
        print("Settings Clicked");
        break;
      case 2:
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context)=> ProfileScreen()), 
            (route)=> false,
           );       
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column( // Main Column (Non-Scrollable + Scrollable)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // **Non-Scrollable Header**
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/image/a.png'),
                ),
                SizedBox(width: 10),
                Text(
                  'Welcome, Bidhan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                  PopupMenuButton(
                 onSelected: (item) => OnSelected(context,item),
                 itemBuilder: (context)=>[
                   PopupMenuItem<int>(value:0, child: Text('Menu')),
                   PopupMenuItem<int>(value:1, child: Text('Settings')),
                   PopupMenuItem<int>(value:2, child: Text('Logout'))
                  ]),
        ],

            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded, size: 30),
                labelText: 'Search',
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),

           
            Expanded( 
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                   
                    SizedBox( 
                      height: 193,                   
                      child:  UpperPortion(),
                      ),
                  
                    SizedBox(height: 20),
                    Dcbp(),
                    
                    SizedBox(height: 20),
                    _buildSectionHeader("Trending Course"),
                    TrendingCourse(),

                    SizedBox(height: 20),
                    _buildSectionHeader("Recently Added Course"),
                    
                    Recent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
