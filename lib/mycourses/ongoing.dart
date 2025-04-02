import 'package:flutter/material.dart';
import 'package:project/mycourses/completed.dart';
import 'package:project/mycourses/ongo.dart';

class Ongoing extends StatefulWidget {

  const Ongoing({super.key});

  @override
  State<Ongoing> createState() => _OngoingState();
}

class _OngoingState extends State<Ongoing> with SingleTickerProviderStateMixin {
  late TabController _tabController ;

  @override
  void initState(){
    super.initState();   
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        leading:  Icon(Icons.arrow_back_ios_new_sharp),
        centerTitle: true,
        title: Text('My Courses', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),

      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 4,
            color: Colors.white,
                child:SizedBox(
                  height: 55,                              //height of the card
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar( 
                      controller: _tabController,
                      tabs: [
                      Tab(child: Text('Ongoing'),),
                       Tab(child:Text('Completed')),
                    ],
                      indicator: BoxDecoration(
                      color: Colors.indigo.shade200,
                      borderRadius: BorderRadius.circular(50)
                       ),
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                   ),
                  ),
                ),
          ),
             Expanded(
               child: TabBarView(
                 controller: _tabController,
         //        physics: NeverScrollableScrollPhysics(), // Disable animation effect
                children: [
                 Ongo(),
                 Completed(),
               ],),
             )
            ],
          ),
        ),
    );
  }
}