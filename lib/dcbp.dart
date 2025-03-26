import 'package:flutter/material.dart';
import 'package:project/profile/profilescreen.dart';

class Dcbp extends StatelessWidget {
  const Dcbp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
         InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=> ProfileScreen()));
         },child: Card(
            child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    color: Colors.yellow[50]
                  ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Icon(Icons.design_services, size: 50, color: Colors.yellow,),
                      SizedBox(height: 5,),
                      Text('Design', style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
              ),
            ),
          ),),
          Card(
            child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                    color: Colors.pink[50],
                  ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Icon(Icons.code, size: 50, color: Colors.pink),
                      SizedBox(height: 5,),
                      Text('Code', style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                color: Colors.blue[50],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Icon(Icons.bar_chart, size: 50, color:Colors.blue),
                      SizedBox(height: 5,),
                      Text('Business', style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
              ),
            ),
          ),
                Card(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                color: Colors.green[50]
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: 80,
                  child: Column(
                    children: [
                      Icon(Icons.photo_camera_back_outlined, size: 50, color: Colors.green,),
                      SizedBox(height: 5,),
                      Text('Photo', style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}