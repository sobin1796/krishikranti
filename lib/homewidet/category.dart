import 'package:flutter/material.dart';
import 'package:om/categoryitems/flowers.dart';
import 'package:om/categoryitems/fruits_items.dart';
import 'package:om/categoryitems/green_vegetable.dart';
import 'package:om/categoryitems/millItems.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class Categoryitems extends StatelessWidget {
  const Categoryitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: themewhiteCOlor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                color: Green,
                borderRadius: BorderRadius.only(),
              ),
              child: Align(
                alignment:
                    Alignment.center, // Align the image container to the left
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 59, 106, 53),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.only(left: 8.0),
                  child: Image.asset(
                    'images/hearderbanner.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          color: Vx.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ))),
            const Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Green,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GreenVegetable(),
                          ));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Green,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 6,
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
                          'Green vegetables'
                              .text
                              .color(const Color.fromARGB(255, 255, 255, 255))
                              .make(),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FruitsItems(),
                          ));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Green,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              color: themewhiteCOlor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/Fruits.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          'Fruits '
                              .text
                              .color(const Color.fromARGB(255, 255, 255, 255))
                              .make(),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MilkProducts(),
                          ));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Green,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              color: themewhiteCOlor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/milk.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ' milk'
                              .text
                              .color(const Color.fromARGB(255, 255, 255, 255))
                              .make(),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FlowerItems(),
                          ));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Green,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 6,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              color: themewhiteCOlor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/Flower.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ' Flower'
                              .text
                              .color(const Color.fromARGB(255, 255, 255, 255))
                              .make(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
