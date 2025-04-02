import 'package:flutter/material.dart';

class Completed extends StatefulWidget {
  const Completed({super.key});

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                            image: AssetImage('assets/image/tc1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('UI/UX design', style: TextStyle(fontSize: 16)),
                            Text('8 lesson to go', style: TextStyle(fontSize: 12)),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(
                                  width: 180,
                                  child: LinearProgressIndicator(
                                    value: 1,
                                    backgroundColor: Colors.grey[300],
                                    color: Colors.indigo,
                                    minHeight: 4,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Text('100%'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}