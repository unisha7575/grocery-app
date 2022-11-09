import 'package:flutter/material.dart';
import 'package:grocery/grocery3.dart';
import 'package:grocery/grocery6.dart';
import 'package:grocery/grocery7.dart';

import 'grocery5.dart';

class Grocery2 extends StatefulWidget {
  const Grocery2({Key? key}) : super(key: key);

  @override
  State<Grocery2> createState() => _Grocery2State();
}

class _Grocery2State extends State<Grocery2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.green,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(


               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu,size: 27,color: Colors.white,),Spacer(),
                      CircleAvatar(
                        radius:22,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.shopping_cart_outlined,size: 27,color: Colors.green,))
                    ],
                  ),
                   Text("Welcome",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: Colors.white),),
                Text("What do you want to buy?",style: TextStyle(fontSize:15,fontWeight: FontWeight.w400,color: Colors.white),),
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Container(
                     decoration: BoxDecoration(
                         color: Colors.white,
                       borderRadius: BorderRadius.circular(15)
                     ),

                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10,right: 15),
                           child: Icon(Icons.search),
                         ),
                         SizedBox(
                           height: 50,
                           width: 200,
                           child: TextField(
                             decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "Search here...",
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),

                ],

              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                color: Colors.white,

              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text("category",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.w700),),Spacer()
                       , Text("See more...",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                Grocery3(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: Row(
                      children: [
                        Text("Popular",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.w600),),Spacer()
                        , Text("See All...",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w500),)

                      ],
                    ),
                  ),
                  Grocery5(),
                  Grocery7(),
                ],
              ),
            ),
          ],

        ),
      )
      ),
    );



  }
}
