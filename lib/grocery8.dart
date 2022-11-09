import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class Grocery8 extends StatefulWidget {
  final String image2;
  final String Name;
  final String Range;

  const Grocery8({Key? key,required this.image2,required this.Name,required this.Range}) : super(key: key);

  @override
  State<Grocery8> createState() => _Grocery8State();
}

class _Grocery8State extends State<Grocery8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:Colors.green,
      body: Column(
        children: [
Image.network(widget.image2) ,

       Expanded(
         child: Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            color: Colors.green,

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(widget.Name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                Text(widget.Range,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800 ),),
              ],
            ),
          )
         ),
       )
     ], ),

    );
  }
}
