import 'package:flutter/material.dart';

class SavedCourse extends StatelessWidget {
  const SavedCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Saved Courses'),
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