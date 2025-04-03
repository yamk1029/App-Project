import 'package:flutter/material.dart';

class Myproject extends StatelessWidget {
  const Myproject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('My Projects'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: (){
             Navigator.pop(context);
           },
         )
       ),
    );
  }
}