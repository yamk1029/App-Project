import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        title: Text('My Profile', style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      body:
        
           Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/image/1.png'),
                    ),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Yam Ghimire'),
                      ],
                    ),
                    IconButton( 
                      onPressed: () {
                        
                      },
                      icon: Icon(Icons.edit,),
                      ),
                  ],
                ),
              ),
             Expanded(child:  ListView.builder(
                itemCount: 8,
                itemBuilder: (context, int index){
                  return Card(
                     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                    child: ListTile(
                      leading: Icon(Icons.military_tech_outlined, color: Colors.blue),
                      title: Text('My Certification'),
                    ),
                  );
                }),),
            ],
          ),
            
           
         );
        }
      }