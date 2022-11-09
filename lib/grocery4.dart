import 'package:flutter/material.dart';

class Grocery4 extends StatefulWidget {
  final String img;
  final String nam;

  const Grocery4({Key? key, required this.img, required this.nam})
      : super(key: key);

  @override
  State<Grocery4> createState() => _Grocery4State();
}

class _Grocery4State extends State<Grocery4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Image.network(
                  widget.img,
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
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      widget.nam,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
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
