import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

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
                          color: Colors.black,
                        ),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child: Column(
                        children: [
                          Text('UI/UX design', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          Text('8 lesson to go'),

                          // Row(
                          //   children: [
                          //     Expanded(
                          //       child: linearProgressIndicator(
                          //         Value:0.90,
                          //       )
                          //       )
                          //   ],
                          // )

                        ],
                       ),
                     ),
                    ],
                  ),
                  
                ),
              )
            ],
          ),
        )
      ]
    );
  }
}