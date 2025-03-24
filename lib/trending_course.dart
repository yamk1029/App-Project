import 'package:flutter/material.dart';

class TrendingCourse extends StatelessWidget {
  const TrendingCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, 
      child: Row(
        children: List.generate(6, (index) => courseItem(context, index)), // Creating  6 items
      ),
    );
  }

  Widget courseItem(BuildContext context, int index) {
    List<String> courseTitles = [
      'UI UX Design',
      'Flutter Development',
      'Python for AI',
      'Web Development',
      'Graphic Design',
      'Data Science',
    ];
    List<String> imagePaths = [
      'assets/image/tc1.png',
      'assets/image/tc2.png',
      'assets/image/tc3.png',
      'assets/image/tc4.png',
      'assets/image/tc5.png',
      'assets/image/tc6.png',
    ];

    return Padding(
      padding: const EdgeInsets.only(right: 10), 
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imagePaths[index]),
                    fit: BoxFit.cover, 
                  ),
                ),
              ),
                Positioned(
                  top: 5,
                  left: 5,                 
  
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.bookmark_outline, color: Colors.black, size: 15),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('${courseTitles[index]} Bookmarked!')),
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 5),
          Container(
            width: 150,
            alignment: Alignment.center,
            child: Text(
              courseTitles[index],
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
    
  }
}

// import 'package:flutter/material.dart';

// class TrendingCourse extends StatelessWidget {
//   const TrendingCourse({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal, // ✅ Enables horizontal scrolling
//       child: Row(
//         children: [
//           courseItem('UI UX Design', 'assets/image/tc1.png'),
//           courseItem('Flutter Development', 'assets/image/tc2.png'),
//           courseItem('Python for AI', 'assets/image/tc3.png'),
//           courseItem('Web Development', 'assets/image/tc4.png'),
//           courseItem('Graphic Design', 'assets/image/tc5.png'),
//           courseItem('Data Science', 'assets/image/tc6.png'),
//         ],
//       ),
//     );
//   }

//   // Helper function to create a course item
//   Widget courseItem(String title, String imagePath) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 10), // ✅ Space between containers
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                     image: AssetImage(imagePath),
//                     fit: BoxFit.cover, // ✅ Makes the image cover the container
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 5,
//                 left: 5,
//                 child: IconButton(
//                   icon: Icon(Icons.bookmark_border, color: Colors.white, size: 20),
//                   onPressed: () {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('$title Bookmarked!')),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 5),
//           Container(
//             width: 150,
//             alignment: Alignment.center,
//             child: Text(
//               title,
//               style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//this is much more easier adn easy to understand.