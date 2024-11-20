import 'package:flutter/material.dart';
import 'package:om/Api/category_items_APi.dart';
import 'package:om/Product_Details/Green_Vegetable_product_details.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:om/model/prodict_category_model.dart';
import 'package:velocity_x/velocity_x.dart';

class GreenVegetable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Green Vagetable ',
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
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final Products = snapshot.data!;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  '"Among People '
                                      .text
                                      .size(24)
                                      .color(Green)
                                      .bold
                                      .make(),
                                  'Popular Green Vegetables" '
                                      .text
                                      .size(23)
                                      .color(Green)
                                      .bold
                                      .make(),
                                ],
                              ),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 10,
                                  width:
                                      MediaQuery.of(context).size.height / 10,
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
                    //
                    Expanded(
                      child: GridView.builder(
                          itemCount: Products.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            childAspectRatio: 3 / 4,
                          ),
                          itemBuilder: (context, index) {
                            final veggie = Products[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Green_VegetableDetails(
                                              imageUrl: 'https://img-global.cpcdn.com/seasonal_ingredients/619f72a2e2053893/680x340cq70/photo.jpg',
                                              name: veggie.name!,
                                              price: double.tryParse(veggie.price ?? '0.0') ??00,

                                            )));
                              },
                              child: Card(
                                color: Green,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg',
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
                                            veggie.name!.text
                                                .size(18)
                                                .color(Vx.white)
                                                .make(),
                                            const SizedBox(height: 4),
                                            Text(
                                              '\$${veggie.price ?? '0.00'}',
                                              style: const TextStyle(
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 255, 182, 11),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
