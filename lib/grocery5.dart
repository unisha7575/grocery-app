import 'package:flutter/material.dart';
import 'package:grocery/grocery6.dart';

class Grocery5 extends StatefulWidget {
  const Grocery5({Key? key}) : super(key: key);

  @override
  State<Grocery5> createState() => _Grocery5State();
}

class _Grocery5State extends State<Grocery5> {
  List<String>im=["https://www.freshproduceshoppe.com/wp-content/uploads/2018/09/strawberry-freshproduceshoppe-1024x1024.jpg",
"https://kirbiecravings.com/wp-content/uploads/2022/03/4-ingredient-birthday-cake-2.jpg","https://image.shutterstock.com/image-photo/red-apple-isolated-on-white-260nw-1727544364.jpg",    "https://d2n7tchuu1wmsv.cloudfront.net/uploads/10143/products/1589986077_front1.jpeg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkiq2enU-6M--8tiE1njhU7VfpYcy2A7GkiDLN0_Df0rKI-fb9XfeLHtViVtJ-D81lExc&usqp=CAU"];

  @override

  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children:
          List.generate(im.length, (index) {
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery6(image: im[index])));

               },
                child: Container(
                // width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(0, 3),
                        // changes position of shadow
                      ),
                    ],
                  ),

                 // height: 80,
                 // width:100,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.network(im[index],height: 60,width: 70,fit: BoxFit.fill,),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 5),
                      //   child: Text(na[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                      // ),

                    ],
                  ),

                ),
              ),
            );
          }

          )),
    );
  }
}
