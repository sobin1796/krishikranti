import 'package:flutter/material.dart';
import 'package:om/Api/category_items_APi.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:om/model/prodict_category_model.dart'; // Import your model file
import 'package:velocity_x/velocity_x.dart';

class FlowerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flowers ',
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
          child: FutureBuilder<List<ItemCategory>>(
            future: ItemCategoryApi.getProduct(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text('No products available'));
              }

              final products = snapshot.data!;

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                '"Among People '
                                    .text
                                    .size(24)
                                    .color(Green)
                                    .bold
                                    .make(),
                                'Popular Flowers" '
                                    .text
                                    .size(23)
                                    .color(Green)
                                    .bold
                                    .make(),
                              ],
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height / 10,
                                width: MediaQuery.of(context).size.height / 8,
                                child: Image.asset('images/leaf.png')),
                            10.heightBox,
                          ],
                        )),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Green,
                    endIndent: 15,
                    indent: 15,
                  ),
                  20.heightBox,
                  Expanded(
                    child: GridView.builder(
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          childAspectRatio: 3 / 4,
                        ),
                        itemBuilder: (context, index) {
                          final product = products[index];
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
                                        'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg', // Replace with a default URL if needed
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
                                        product.name!.text
                                            .size(18)
                                            .color(Vx.white)
                                            .make(),
                                        SizedBox(height: 4),
                                        Text(
                                          '\$${product.price ?? '0.00'}',
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
              );
            },
          ),
        ),
      ),
    );
  }
}
