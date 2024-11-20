import 'package:flutter/material.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class Fruits {
  final String name;
  final double price;
  final String imageUrl;

  Fruits({required this.name, required this.price, required this.imageUrl});
}

class FruitsItems extends StatelessWidget {
  final List<Fruits> veggies = [
    Fruits(
        name: 'Carrot',
        price: 2.36,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2023/3/WB/RV/ZG/137288736/12818-1-500x500.webp'),
    Fruits(
        name: 'Potato',
        price: 2.49,
        imageUrl:
            'https://www.supermart.ng/cdn/shop/files/rspwxyz38.jpg?v=1689904271'),
    Fruits(
        name: 'Potato',
        price: 1.29,
        imageUrl:
            'https://khetifood.com/image/cache/catalog/turnip-500x500.jpeg'),
    Fruits(
        name: 'Lettuce',
        price: 1.59,
        imageUrl:
            'https://onlinetarkaripasal.com/wp-content/uploads/2020/10/turnip.jpg'),
    Fruits(
        name: 'Carrot',
        price: 2.36,
        imageUrl:
            'https://5.imimg.com/data5/SELLER/Default/2023/3/WB/RV/ZG/137288736/12818-1-500x500.webp'),
    Fruits(
        name: 'Potato',
        price: 2.49,
        imageUrl:
            'https://www.supermart.ng/cdn/shop/files/rspwxyz38.jpg?v=1689904271'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Fruits Items',
            style: TextStyle(color: themewhiteCOlor),
          ),
          backgroundColor: Green,
          iconTheme: const IconThemeData(color: themewhiteCOlor),
          centerTitle: true,
          toolbarHeight: 70,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: themewhiteCOlor,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            '"Among People '
                                .text
                                .size(24)
                                .color(Green)
                                .bold
                                .make(),
                            'Popular Fruits" '
                                .text
                                .size(23)
                                .color(Green)
                                .bold
                                .make(),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height/10,
                            width: MediaQuery.of(context).size.height/10,
                            child: Image.asset('images/leaf.png')),
                        10.heightBox,
                      ],
                    )),
              ),
             const Divider(thickness: 2,
             color: Green,
             endIndent: 15,
             indent: 15,

             ),
              
              20.heightBox,
              //
              Expanded(
                child: GridView.builder(
                    itemCount: veggies.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 3 / 4,
                    ),
                    itemBuilder: (context, index) {
                      final veggie = veggies[index];
                      return Card(
                        color: Green,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    veggie.imageUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    veggie.name.text
                                        .size(18)
                                        .color(Vx.white)
                                        .make(),
                                    SizedBox(height: 4),
                                    Text(
                                      '\$${veggie.price.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color.fromARGB(
                                            255, 255, 182, 11),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
