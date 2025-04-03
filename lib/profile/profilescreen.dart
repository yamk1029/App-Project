import 'package:flutter/material.dart';
import 'package:project/home.dart';

import 'package:project/profile/certificate.dart';
import 'package:project/profile/helpcenter.dart';
import 'package:project/profile/mycard.dart';
import 'package:project/profile/myproject.dart';
import 'package:project/profile/privacypolicy.dart';
import 'package:project/profile/rateus.dart';
import 'package:project/profile/savedcourse.dart';
import 'package:project/profile/feedback.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> Options = [
      {'title': 'Certifications', 'icon': Icons.wb_incandescent_outlined},
      {'title': 'My Projects', 'icon': Icons.folder_open},
      {'title': 'Saved Course', 'icon': Icons.bookmark_border},
      {'title': 'My Card', 'icon': Icons.credit_card},
      {'title': 'Help Center', 'icon': Icons.help_outline},
      {'title': 'Privacy Policy', 'icon': Icons.lock_outline},
      {'title': 'Feedback', 'icon': Icons.feedback_outlined},
      {'title': 'Rate Us', 'icon': Icons.favorite_border},
    ];

    return Scaffold(
      appBar: AppBar(
     leading: IconButton(onPressed:(){
      Navigator.pushReplacement(
        context,
         MaterialPageRoute(
          builder: (context)=> Home()));        
     },
     icon: Icon(Icons.arrow_back_ios_new),),
        title: const Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white, 
      ),

      
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,8,8,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/image/1.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Yam Ghimire',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.blue),
                    ),
                    IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Options.length,
              itemBuilder: (context, int index) {
                return Card(
                  elevation:4,
                  margin:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                        color: Colors.grey, width: 0.5), 
                  ),
                  child: ListTile(
                    leading: Icon(
                      Options[index]['icon'],
                      color: const Color.fromARGB(255, 23, 82, 131),
                    ),
                    title: Text(Options[index]['title']),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 16,
                    ),
                    onTap: () {
                      if (Options[index]['title'] == 'Certifications'){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Certificate()));
                      }
                      if (Options[index]['title'] == 'My Projects'){
                        Navigator.push(
                          context,
                           MaterialPageRoute(builder: (context)=> Myproject()));
                      }
                       if (Options[index]['title'] == 'Saved Course'){
                        Navigator.push(
                          context,
                       MaterialPageRoute(builder: (context)=> SavedCourse()));
                      }
                        if (Options[index]['title'] == 'My Card'){
                        Navigator.push(
                          context,
                       MaterialPageRoute(builder: (context)=> Mycard()));
                      }
                        if (Options[index]['title'] == 'Help Center'){
                        Navigator.push(
                          context,
                       MaterialPageRoute(builder: (context)=> Helpcenter()));
                      }
                        if (Options[index]['title'] == 'Privacy Policy'){
                        Navigator.push(
                          context,
                       MaterialPageRoute(builder: (context)=> Privacypolicy()));
                      }  
                        if (Options[index]['title'] == 'Feedback'){
                        Navigator.push(
                          context,
                       MaterialPageRoute(builder: (context)=> Feedback1()));
                      }
                        if (Options[index]['title'] == 'Rate Us'){
                        Navigator.push(
                          context,
                       MaterialPageRoute(builder: (context)=> Rateus()));
                      }                                                                                      
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}