import 'package:flutter/material.dart';
import 'package:grocery/grocery8.dart';

class Grocery7 extends StatefulWidget {
  const Grocery7({Key? key}) : super(key: key);

  @override
  State<Grocery7> createState() => _Grocery7State();
}

class _Grocery7State extends State<Grocery7> {
  List<String> pic = [
"https://media.self.com/photos/5cffd8de2ce42bafa1311be9/4:3/w_2560%2Cc_limit/GettyImages-1127822269.jpg",    "https://plantogram.com/wa-data/public/shop/products/55/06/655/images/1256/1256.750@2x.jpg",
"https://img.krishijagran.com/media/2444/figure-of-colored-capsicums.jpg",    "https://thefirstyearblog.com/wp-content/uploads/2015/11/chocolate-chocolate-cake-1.png"
  ];
  List<String> names = ["cauliflower", "Mango", "Capsicum", "Cake"];
  List<String>price = ["Rs 50/kg", "Rs 15/piece", "Rs 150/kg", "640/piece"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(pic.length, (index) {
            return Card(
              color: Colors.green,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator
                            .push(context, MaterialPageRoute(builder:(context)
                        =>
                            Grocery8(image2: pic[index],
                                Name: names[index],
                                Range: price[index
                                ])
                        ),
                        );
                      });
                    },
                    child: Container(
                      child: Image.network(
                        pic[index],
                        fit: BoxFit.fill,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.15,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.47,
                      ),
                    ),
                  ),

                  // Image(
                  //   image: NetworkImage(pic[index],),o
                  //  // fit: BoxFit.fill,
                  //   // height: MediaQuery.of(context).size.height*0.30,
                  //  width: MediaQuery.of(context).size.width*0.4,
                  //  // fit: BoxFit.fill,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(names[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800,color: Colors.white
                    ),),
                  ),
                  Text(price[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Colors.white),),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
