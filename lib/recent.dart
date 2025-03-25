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
              height: 300,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),

              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/image/tc1.png',
                        width: double.infinity,
                        height: 150, 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(7, 4, 8, 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            color: Colors.amber[100],
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star_border, color: Colors.yellow[700],),
                              Text('4.9', style: TextStyle(fontSize: 16, color: Colors.yellow[700]),),
                            ],
                          ),),
                      ),
                    ],
                  )
                  
                ],
              ),
            ),
          ),

          ],
        ),
    );
  }
}