import 'package:flutter/material.dart';

class Helpcenter extends StatelessWidget {
  const Helpcenter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text('Help Center'),
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