import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: [
            Card(
             elevation: 10,  
              child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
               ),
                child: Column(
                  children: [
                     Image.asset(
                      'assets/image/tc1.png',
                       width: double.infinity,
                       fit: BoxFit.cover
                      ),
                  ],
                ),
              ),
            ),
           Card(
             elevation: 10,  
              child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
                color: Colors.white,
               ),
                child: Column(
                  children: [
                     Image.asset(
                      'assets/image/tc2.png',
                       width: double.infinity,
                       fit: BoxFit.cover,
                      ),
                  ],
                ),
              ),
            ),
       Card(
             elevation: 10,  
              child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
                color: Colors.white,
               ),
                child: Column(
                  children: [
                     Image.asset(
                      'assets/image/tc3.png',
                       width: double.infinity,
                       fit: BoxFit.cover,
                      ),
                  ],
                ),
              ),
            ),  
       Card(
             elevation: 10,  
              child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
                color: Colors.white,
               ),
                child: Column(
                  children: [
                     Image.asset(
                      'assets/image/tc4.png',
                       width: double.infinity,
                       fit: BoxFit.cover
                    ),
                  ],
                ),
              ),
            ),                    
          ],
        ),
    );
  }
}