import 'package:flutter/material.dart';
import 'package:grocery/grocery2.dart';

class Grocery extends StatefulWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image(image: NetworkImage("https://thumbs.dreamstime.com/b/groceries-23958998.jpg",),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Buy Fresh Grocery",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.w900),),
          ),
          SizedBox(
            height:80,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
style: ElevatedButton.styleFrom(
  backgroundColor: Colors.green,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20)
)

),
                  onPressed: (
                      ){
  Navigator.push(context,MaterialPageRoute(builder: (context)=>Grocery2()));
                  }, child: Text("Get Started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
            ),
          )
        ],
      ),
    );
  }
}
