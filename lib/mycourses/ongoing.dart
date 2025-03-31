import 'package:flutter/material.dart';

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
            elevation: 4,
            color: Colors.white,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar( 
                    indicator: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(50)
                  ), labelColor: Colors.white,
                   controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                    tabs: [
                    Tab(child: Text('Ongoing'),),
                     Tab(child:Text('Completed')),
                  ]),
                ),
          ),
             Expanded(
               child: TabBarView(
                 controller: _tabController,
                children: [
                 Text(' hello'),
                 Text('indictor'),
               ],),
             )
            ],
          ),
        ),
      
      // Card(
      //   elevation: 5,
      //   child: SizedBox(
      //     height: 120,
      //     width: 350,
      //     child: Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         decoration: BoxDecoration(
      //           image: Image.asset('assets/image/tc1.png'),
      //          borderRadius: BorderRadius.circular(15),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

    );
  }
}