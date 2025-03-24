import 'package:flutter/material.dart';
import 'package:project/dcbp.dart';
import 'package:project/trending_course.dart';
import 'package:project/upper_portion.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return 
    // SingleChildScrollView(
    //   scrollDirection: Axis.vertical,
    Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40,10,10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/image/a.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Welcome, Bidhan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ],
            ),
            SizedBox(height: 20,),
            TextFormField(
      
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded, size: 30,) ,
                labelText: 'Search',
                hintText: 'Search',
                
               border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                
               ) 
              ),
            ),
           SizedBox(height: 20,),

           SizedBox( height:200, child: UpperPortion(),
           ),
            SizedBox(height: 20,),
            Dcbp(),
            SizedBox(height: 20,),
            Text(
              ' Trending Course',
             style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
             textAlign: TextAlign.left,
             ),
             SizedBox(height: 10),
             TrendingCourse(),
          ],
        ),
      ),
    );
  }
}