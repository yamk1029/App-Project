import 'package:flutter/material.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({super.key});

   @override
  Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
        title: Text('Privacy Policy'),
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