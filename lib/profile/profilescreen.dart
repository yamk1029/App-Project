import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> profileOptions = [
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
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
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
              itemCount: profileOptions.length,
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
                      profileOptions[index]['icon'],
                      color: const Color.fromARGB(255, 23, 82, 131),
                    ),
                    title: Text(profileOptions[index]['title']),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 16,
                    ),
                    onTap: () {

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