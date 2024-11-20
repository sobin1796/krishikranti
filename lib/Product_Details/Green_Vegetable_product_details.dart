import 'package:flutter/material.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class Green_VegetableDetails extends StatefulWidget {
  final String imageUrl;
  final String name;
  final double price;

  const Green_VegetableDetails({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<Green_VegetableDetails> {
  int _amount = 1;

  void _incrementAmount() {
    setState(() {
      _amount++;
    });
  }

  void _decrementAmount() {
    setState(() {
      if (_amount > 1) _amount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.name,
          style: const TextStyle(
              color: Vx.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Green,
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: themewhiteCOlor,
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 248, 248, 248),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.2,
                      margin: const EdgeInsets.all(8),
                      child: Image.network(
                        widget.imageUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Green,
                    endIndent: 15,
                    indent: 15,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.46,
              decoration: const BoxDecoration(
                color: Green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    10.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(widget.name),
                    ),
                    10.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: 'Description'
                          .text
                          .size(16)
                          .color(const Color.fromARGB(255, 61, 228, 49))
                          .bold
                          .make(),
                    ),
                    const Card(
                      color: themewhiteCOlor,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'The rice is suffering from heavy diseases. There are many reasons for this, and it will directly affect production.',
                          maxLines: 6,
                          style: TextStyle(color: Green, fontSize: 16),
                        ),
                      ),
                    ),
                    5.heightBox,
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        'Price:'
                            .text
                            .size(20)
                            .color(const Color.fromARGB(255, 255, 243, 11))
                            .make(),
                        '${widget.price.toStringAsFixed(2)} '
                            .text
                            .size(20)
                            .color(const Color.fromARGB(255, 255, 255, 255))
                            .make(),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              const Text(
                                'Amount:',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 243, 11),
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(width: 10),
                              IconButton(
                                onPressed: _decrementAmount,
                                icon: const Icon(Icons.remove_circle_outline,
                                    color: Colors.white),
                              ),
                              Text(
                                '$_amount',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              IconButton(
                                onPressed: _incrementAmount,
                                icon: const Icon(Icons.add_circle_outline,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    5.heightBox,
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add to cart'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
