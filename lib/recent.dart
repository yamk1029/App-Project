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
              height: 320,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),

              child: Stack(
                children: [ 
                  Column(
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
                             ),
                            ),
                        ),
                           Spacer(),
                           Row(
                             children: [
                              Icon(Icons.watch_later_outlined),
                               Text('2:40 Hrs'),
                             ],
                           ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Text('How to make creating phto with Photoshop', style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/image/tc1.png'),
                          ),
                          SizedBox(width: 10,),
                          Text('Bidhan Ghimire', style: TextStyle(fontSize: 14, color: Colors.blue),),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,2,8),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(7, 4, 4, 7),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 142, 156, 231),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text('\$174.0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ),
                          )
                          
                        ],
                      ),
                    ),
                  ],
                ),

                Positioned(
                  top: 5,
                  right: 5,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 230.0),
                    child: CircleAvatar(
                     radius: 15,
                     backgroundColor: Colors.white,
                     child: IconButton(
                     icon: Icon(Icons.bookmark_outline, color: Colors.black, size: 15),
                     onPressed: () {
                       ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(content: Text('Bookmarked!')),
                        );
                       },
                      ),
                     ),
                   ),
                 )
              ],
             ),
            ),         
          ),

                     Card(
            elevation: 10,
            child: Container(
              height: 320,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),

              child: Stack(
                children: [ 
                  Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/image/tc2.png',
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
                             ),
                            ),
                        ),
                           Spacer(),
                           Row(
                             children: [
                              Icon(Icons.watch_later_outlined),
                               Text('2:40 Hrs'),
                             ],
                           ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Text('How to make creating phto with Photoshop', style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/image/tc2.png'),
                          ),
                          SizedBox(width: 10,),
                          Text('Bidhan Ghimire', style: TextStyle(fontSize: 14, color: Colors.blue),),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,2,8),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(7, 4, 4, 7),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 142, 156, 231),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text('\$174.0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ),
                          )
                          
                        ],
                      ),
                    ),
                  ],
                ),

                Positioned(
                  top: 5,
                  right: 5,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 230.0),
                    child: CircleAvatar(
                     radius: 15,
                     backgroundColor: Colors.white,
                     child: IconButton(
                     icon: Icon(Icons.bookmark_outline, color: Colors.black, size: 15),
                     onPressed: () {
                       ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(content: Text('Bookmarked!')),
                        );
                       },
                      ),
                     ),
                   ),
                 )
              ],
             ),
            ),         
          ),
                     Card(
            elevation: 10,
            child: Container(
              height: 320,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),

              child: Stack(
                children: [ 
                  Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/image/tc3.png',
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
                             ),
                            ),
                        ),
                           Spacer(),
                           Row(
                             children: [
                              Icon(Icons.watch_later_outlined),
                               Text('2:40 Hrs'),
                             ],
                           ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Text('How to make creating phto with Photoshop', style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/image/tc3.png'),
                          ),
                          SizedBox(width: 10,),
                          Text('Bidhan Ghimire', style: TextStyle(fontSize: 14, color: Colors.blue),),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,2,8),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(7, 4, 4, 7),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 142, 156, 231),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Text('\$174.0', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                            ),
                          )
                          
                        ],
                      ),
                    ),
                  ],
                ),

                Positioned(
                  top: 5,
                  right: 5,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 230.0),
                    child: CircleAvatar(
                     radius: 15,
                     backgroundColor: Colors.white,
                     child: IconButton(
                     icon: Icon(Icons.bookmark_outline, color: Colors.black, size: 15),
                     onPressed: () {
                       ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(content: Text('Bookmarked!')),
                        );
                       },
                      ),
                     ),
                   ),
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