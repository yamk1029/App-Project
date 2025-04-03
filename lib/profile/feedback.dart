import 'package:flutter/material.dart';

class Feedback1 extends StatelessWidget {
  const Feedback1({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
        title: Text('Feedback'),
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