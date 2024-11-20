import 'package:flutter/material.dart';
import 'package:om/Acount/acount.dart';
import 'package:om/cart&Buy/cart_items_page.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Green,
        leading: IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Acount()));}, icon: const Icon(Icons.menu),color: Vx.white,),
      actions: [
        IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage()));}, icon:const  Icon(Icons.shopping_cart_sharp,color: Vx.white,))
        
      ],
      ),
      backgroundColor: themewhiteCOlor,
      body: Column(
        children: [
          // Top Container
     Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
        color: Green,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(78)),
      ),
      child: Align(
        alignment: Alignment.centerLeft, // Align the image container to the left
        child: Container(
    width: MediaQuery.of(context).size.width / 1.3, 
    height: MediaQuery.of(context).size.height / 1.5, 
    margin: const EdgeInsets.only(left: 8.0), 
    child: Image.asset(
      'images/krishi.png',
      fit: BoxFit.contain, 
    ),
        ),
      ),
    ),
    
    
          // Expanded Container with ListView
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: themewhiteCOlor,
              ),
              child: Column(
                children: [
                  // Title
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Featured items',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          color: Green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                color: themewhiteCOlor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'images/veg1.webp',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            ' vegetables'
                                .text
                                .color(const Color.fromARGB(255, 255, 255, 255))
                                .make(),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                          color: Green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 2.4,
                              decoration: BoxDecoration(
                                color: themewhiteCOlor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'images/sell.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            'Buy vegetables'
                                .text
                                .color(const Color.fromARGB(255, 255, 255, 255))
                                .make(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 1.06,
                    decoration: BoxDecoration(
                      color: Green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 9,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                            color: themewhiteCOlor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/scan.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        'Rice Diseases Detection'
                            .text
                            .color(const Color.fromARGB(255, 255, 255, 255))
                            .size(18)
                            .make(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
