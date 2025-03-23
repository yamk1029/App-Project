import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class UpperPortion extends StatelessWidget {
  const UpperPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [

         CarouselSlider(
          options: CarouselOptions(
            // aspectRatio: 16 / 9,
                  // onPageChanged: onPageChange,
                  autoPlay: false,
          ),
          items: [ Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.pink[50],
            ),
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(24.0, 0, 4,8),
                   child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Text('Want to get \nbest Adviser',  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height:50),
                             Text('Get Start', style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),),
                            ],
                          ),
                    
                          Image.asset('assets/image/1.png', width:120, height: 120,),
                        ],
                      ),
                 ),  
            ),
            SizedBox(width: 5,),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               color: Colors.blue[100],
                ),
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(24.0, 0, 4,8),
                   child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               SizedBox(height: 20,),
                              Text('What you wnat \nto learn ?',  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height:50),
                             Text('Get Start', style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),),
                            ],
                          ),
                    
                          Image.asset('assets/image/2.png', width:120, height: 120,),
                        ],
                      ),
                 ),    
            ),
            SizedBox(width: 20,),
       Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
               color: Colors.orange[100],
            ),
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(24, 0, 4,8),
                   child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Text('Get online \nCertificate',  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height:50),
                             Text('Get Start', style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),),
                            ],
                          ),
                    
                          Image.asset('assets/image/3.png', width:120, height: 120,),
                        ],
                      ),
                    ),           
                 ),
               ]    
             ),                  
           ]
          
    );
    
  }
}