import 'package:flutter/material.dart';
import 'package:om/Productasell/Productsell_page.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class Acount extends StatefulWidget {
  const Acount({super.key});

  @override
  State<Acount> createState() => _AcountState();
}

class _AcountState extends State<Acount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Green,iconTheme: const IconThemeData(color: themewhiteCOlor),),
      body: Container(
        padding: const EdgeInsets.all(12),
        color: themewhiteCOlor,
        width: context.screenWidth,
        height: context.screenHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                  child: Column(
                children: [

                  60.heightBox,
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 190,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Green,
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                20.heightBox,
                                "Jeet Bahadur Rai "
                                    .text
                                    .size(22)
                                    .align(TextAlign.left)
                                    .bold
                                    .color(themewhiteCOlor)
                                    .make(),
                                "Jeet1998@gmail.com"
                                    .text
                                    .size(14)
                                    .semiBold
                                    .align(TextAlign.left)
                                    .color(Color.fromARGB(255, 47, 147, 31))
                                    .make(),
                                20.heightBox,
                                const Icon(
                                  size: 40,
                                 Icons.person,
                                  color: Color.fromARGB(255, 173, 178, 209),
                                ),
                                                                 "Farmer"
                                    .text
                                    .size(20)
                                    .semiBold
                                    .align(TextAlign.left)
                                    .color(Color.fromARGB(255, 156, 213, 148))
                                    .make(),
                              ],
                            ),
                            // 130.widthBox,
                            Column(children: [
                              Container(
                                alignment: Alignment.centerRight,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color.fromARGB(
                                              255, 249, 249, 249)
                                          .withOpacity(0.2),
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: ClipOval(
                                  child: Image.network(
                                    'https://weseedchange.org/wp-content/uploads/2019/10/Nepal-organic-farmer-Jit-Bahadur-Singar.jpg',
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              10.heightBox,
                              
                            ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  10.heightBox,
                  const Divider(
                    thickness: 0.5,
                    color: Green,
                    endIndent: 20,
                    indent: 20,
                  ),
                  35.heightBox,
                  ListView(
                    padding: const EdgeInsets.all(10),
                    shrinkWrap: true,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Green,
                        ),
                        alignment: Alignment.center,
                        child: ListTile(
                          leading: const Icon(
                            Icons.sell,
                            color: Color.fromARGB(255, 47, 147, 31),
                            size: 30,
                          ),
                          title: const Text(
                            'Sell Items',
                            style: TextStyle(color:themewhiteCOlor),
                          ),
                          trailing: IconButton(
                              onPressed: () {

                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductsaleItem()));
                              },
                              icon: const Icon(
                                Icons.navigate_next,
                                color: themewhiteCOlor,
                              )),
                        ),
                      ),
                      5.heightBox,
                      Container(
                        padding: const EdgeInsets.all(2),
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Green,
                        ),
                        alignment: Alignment.center,
                        child: ListTile(
                          leading: const Icon(
                           Icons.abc_outlined,
                            color:Color.fromARGB(255, 47, 147, 31),
                            size: 40,
                          ),
                          title: const Text(
                            'common plat dieases',
                            style: TextStyle(color: themewhiteCOlor),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                
                              },
                              icon: const Icon(
                                Icons.navigate_next,
                                color:themewhiteCOlor,
                              )),
                        ),
                      ),
                      5.heightBox,
                      Container(
                        padding: const EdgeInsets.all(2),
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Green,
                        ),
                        alignment: Alignment.center,
                        child: ListTile(
                          leading: const Icon(
                            Icons.assessment,
                            color: Color.fromARGB(255, 47, 147, 31),
                            size: 40,
                          ),
                          title: const Text(
                            'study',
                            style: TextStyle(color: themewhiteCOlor),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                               
                              },
                              icon: const Icon(
                                Icons.navigate_next,
                                color: themewhiteCOlor,
                              )),
                        ),
                      ),
                      5.heightBox,
                      Container(
                        padding: const EdgeInsets.all(2),
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Green,
                        ),
                        alignment: Alignment.center,
                        child: ListTile(
                          leading: const Icon(
                            Icons.settings,
                            color: Color.fromARGB(255, 47, 147, 31),
                            size: 40,
                          ),
                          title: const Text(
                            'Setting & Privacy',
                            style: TextStyle(color: themewhiteCOlor),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                               
                              },
                              icon: const Icon(
                                Icons.navigate_next,
                                color: themewhiteCOlor,
                              )),
                        ),
                      ),
                      5.heightBox,
                      Container(
                        height: 70,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Green,
                        ),
                        alignment: Alignment.center,
                        child: ListTile(
                          leading: const Icon(
                            Icons.abc_outlined,
                            color:Color.fromARGB(255, 47, 147, 31),
                            size: 40,
                          ),
                          title: const Text(
                            'About us',
                            style: TextStyle(color: themewhiteCOlor),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                              
                              },
                              autofocus: true,
                              icon: const Icon(
                                Icons.navigate_next,
                                color:themewhiteCOlor,
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
