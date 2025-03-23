import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class UpperPortionn extends StatelessWidget {
  const UpperPortionn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 160, 
          autoPlay: true,
          enlargeCenterPage: true, 
          viewportFraction: 0.9, // Controls width of each item
        ),
        items: [
          buildBanner(
            color: Colors.pink[50]!,
            text: 'Want to get \nbest Adviser',
            imagePath: 'assets/image/1.png',
          ),
          buildBanner(
            color: Colors.blue[100]!,
            text: 'What you want \nto learn?',
            imagePath: 'assets/image/2.png',
          ),
          buildBanner(
            color: Colors.orange[100]!,
            text: 'Get online \nCertificate',
            imagePath: 'assets/image/3.png',
          ),
        ],
      ),
    );
  }

  Widget buildBanner({
    required Color color,
    required String text,
    required String imagePath,
  }) {
    return Container(
      width: 300, // Adjusted width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 4, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Get Start',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset(
              imagePath,
              width: 100, // Adjust image size
              height: 100,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
