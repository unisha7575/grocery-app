import 'package:flutter/material.dart';

class Grocery6 extends StatefulWidget {
  final String image;

  const Grocery6({Key? key, required this.image})
      : super(key: key);

  @override
  State<Grocery6> createState() => _Grocery6State();
}

class _Grocery6State extends State<Grocery6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,

              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // child: Padding(
                //   padding: const EdgeInsets.all(20),
                //   child: Text(
                //     widget.name,
                //     style: TextStyle(color: Colors.white, fontSize: 30),
                //   ),
                // ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green,
                )
                ,
              ),
            ),
          )
        ],
      ),

    );
  }
}
