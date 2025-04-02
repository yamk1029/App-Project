import 'package:flutter/material.dart';

class Ongo extends StatefulWidget {
  const Ongo({super.key});

  @override
  State<Ongo> createState() => _OngoState();
}

class _OngoState extends State<Ongo> {
  @override
  Widget build(BuildContext context) {
    return  Column(
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
                            image: AssetImage('assets/image/tc4.png'),
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
                                    value: 0.1,
                                    backgroundColor: Colors.grey[300],
                                    color: Colors.indigo,
                                    minHeight: 4,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Text('10%'),
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
                            image: AssetImage('assets/image/tc5.png'),
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
                                    value: 0.2,
                                    backgroundColor: Colors.grey[300],
                                    color: Colors.indigo,
                                    minHeight: 4,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Text('20%'),
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
                            image: AssetImage('assets/image/tc3.png'),
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
                                    value: 0.3,
                                    backgroundColor: Colors.grey[300],
                                    color: Colors.indigo,
                                    minHeight: 4,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Text('30%'),
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