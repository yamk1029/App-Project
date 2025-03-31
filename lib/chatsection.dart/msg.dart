import 'package:flutter/material.dart';

class Msg extends StatelessWidget {
  const Msg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.settings_suggest_outlined),
                      onPressed: () {},
                    ),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/tc1.png'),
                        radius: 24,
                      ),
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/tc2.png'),
                        radius: 24,
                      ),
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/tc3.png'),
                        radius: 24,
                      ),
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/tc4.png'),
                        radius: 24,
                      ),
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/image/tc5.png'),
                        radius: 24,
                      ),
                      Positioned(
                        right: 1,
                        bottom: 1,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 20),
        
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0,12,12),
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
        
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/tc1.png'),
                            radius: 24,
                          ),
                          Row(                       
                            children: [                           
                            Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Yam G',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'perfect',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 180,),
                            Column(
                            children: [
                              Text('11:15', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                                child: Text('3',  style: TextStyle(fontSize: 10,  fontWeight: FontWeight.bold) ),
                              ),
                            ],
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0,12,12),
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
        
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/tc2.png'),
                            radius: 24,
                          ),
                          Row(                       
                            children: [                           
                            Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Yam G',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'perfect',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 180,),
                            Column(
                            children: [
                              Text('11:15', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                                child: Text('3',  style: TextStyle(fontSize: 10,  fontWeight: FontWeight.bold) ),
                              ),
                            ],
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0,12,12),
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
        
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/tc3.png'),
                            radius: 24,
                          ),
                          Row(                       
                            children: [                           
                            Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Yam G',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'perfect',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 180,),
                            Column(
                            children: [
                              Text('11:15', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                                child: Text('3',  style: TextStyle(fontSize: 10,  fontWeight: FontWeight.bold) ),
                              ),
                            ],
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0,12,12),
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
        
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/tc4.png'),
                            radius: 24,
                          ),
                          Row(                       
                            children: [                           
                            Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Yam G',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'perfect',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 180,),
                            Column(
                            children: [
                              Text('11:15', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                                child: Text('3',  style: TextStyle(fontSize: 10,  fontWeight: FontWeight.bold) ),
                              ),
                            ],
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0,12,12),
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
        
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/tc5.png'),
                            radius: 24,
                          ),
                          Row(                       
                            children: [                           
                            Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Yam G',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'perfect',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 180,),
                            Column(
                            children: [
                              Text('11:15', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                                child: Text('3',  style: TextStyle(fontSize: 10,  fontWeight: FontWeight.bold) ),
                              ),
                            ],
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 0,12,12),
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
        
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/tc6.png'),
                            radius: 24,
                          ),
                          Row(                       
                            children: [                           
                            Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Yam G',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'perfect',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 180,),
                            Column(
                            children: [
                              Text('11:15', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.blue,
                                child: Text('3',  style: TextStyle(fontSize: 10,  fontWeight: FontWeight.bold) ),
                              ),
                            ],
                          ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              
            ),
        
          ],
        ),
      ),
    );
  }
}
