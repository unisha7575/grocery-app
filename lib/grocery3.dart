import 'package:flutter/material.dart';
import 'package:grocery/grocery4.dart';

class Grocery3 extends StatefulWidget {
  const Grocery3({Key? key}) : super(key: key);

  @override
  State<Grocery3> createState() => _Grocery3State();
}

class _Grocery3State extends State<Grocery3> {
  List<String>i=["https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-2foodgroups_vegetables_detailfeature.jpg?sfvrsn=226f1bc7_6",
  "https://thumbs.dreamstime.com/b/fruit-2999796.jpg","https://i5.walmartimages.com/asr/30532e8b-827e-4818-a1db-a2d4c2059c43.7b23e197663977372bc1b98f56e63d33.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF",
  "https://www.wilton.com/dw/image/v2/AAWA_PRD/on/demandware.static/-/Sites-wilton-product-master/default/dwd8ae0f52/images/product/191002565/2105-2193-Wilton-Performance-Pans-Aluminum-Round-8-Inch-Cake-Pan-L3.jpg?sw=800&sh=800",
  "https://img1.exportersindia.com/product_images/bc-full/2019/2/6139592/fish-meat-1551087008-4747032.jpeg"];
List<String> n=["Vegetables","Fruits","Snacks","Cake","Meat"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children:
          List.generate(i.length, (index) {
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
             setState(() {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery4(img: i[index], nam: n[index])));
             });
                },
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  height: 80,
                 // width:200,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                      Image.network(i[index],height: 150,width: 80,fit: BoxFit.fill,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(n[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                      ),

                      ],
                    ),
                  ),

                ),
              ),
            );
          }

          )),
    );
  }
}
