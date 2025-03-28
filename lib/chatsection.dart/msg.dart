import 'package:flutter/material.dart';

class Msg extends StatelessWidget {
  const  Msg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  '),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8,16,16),
            child: SizedBox(
              height: 45,
              child: TextFormField(
                decoration: InputDecoration(
                  
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(icon: Icon(Icons.settings_suggest_outlined),
                  onPressed: () {
                    
                  },),
                    
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(10,0,10,0),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image/1.png'),
                  radius: 24,
                ),
                             CircleAvatar(
                               backgroundImage: AssetImage('assets/image/1.png'),
                               radius: 24,
                             ),
                             CircleAvatar(
                               backgroundImage: AssetImage('assets/image/1.png'),
                               radius: 24,
                             ),
                             CircleAvatar(
                               backgroundImage: AssetImage('assets/image/1.png'),
                               radius: 24,
                             ),
               CircleAvatar(
                 backgroundImage: AssetImage('assets/image/1.png'),
                 radius: 24,
               )
              ],
            ),
          )
        ],
      ),
    );
  }
}