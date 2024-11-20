import 'package:flutter/material.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class User {
  final String itemsname;
  final String price;
  final String thumbnail;
  final String amount;
  User({
    required this.thumbnail,
    required this.price,
    required this.itemsname,
    required this.amount
  });
}

// ignore: must_be_immutable
class Cartpage extends StatelessWidget {
  Cartpage({super.key});
  List<User> user = [
    User(
      thumbnail: 'https://www.kesargrocery.com/images/P/RAPINI-01.jpg',
      price: 'Rs-800',
      itemsname: 'Saag',
      amount:'10',
    ),
    User(
      thumbnail:
          'https://www.shutterstock.com/image-photo/green-onion-isolated-on-white-260nw-272532080.jpg',
      price: 'RS-1000',
      itemsname: 'onion Leaf',
      amount:'1000',
    ),
    User(
      thumbnail:
          'https://asapgrocery.in/wp-content/uploads/2023/05/dhaniya.jpg',
      price: 'Rs-1500',
      itemsname: 'Dhaniya',
      amount:'80',
    ),
    User(
      thumbnail:
          'https://i.ebayimg.com/thumbs/images/g/BOAAAOSwV9NlcQ4h/s-l1200.jpg',
      price: 'Rs-800',
      itemsname: 'Seemi',
      amount:'150',
    ),
     User(
      thumbnail: 'https://www.kesargrocery.com/images/P/RAPINI-01.jpg',
      price: 'Rs-800',
      itemsname: 'Saag',
      amount:'10',
    ),
    User(
      thumbnail:
          'https://www.shutterstock.com/image-photo/green-onion-isolated-on-white-260nw-272532080.jpg',
      price: 'RS-1000',
      itemsname: 'onion Leaf',
      amount:'1000',
    ),
    User(
      thumbnail:
          'https://asapgrocery.in/wp-content/uploads/2023/05/dhaniya.jpg',
      price: 'Rs-1500',
      itemsname: 'Dhaniya',
      amount:'80',
    ),
    User(
      thumbnail:
          'https://i.ebayimg.com/thumbs/images/g/BOAAAOSwV9NlcQ4h/s-l1200.jpg',
      price: 'Rs-800',
      itemsname: 'Seemi',
      amount:'150',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
        toolbarHeight: 80,
        shadowColor: Colors.white,
        foregroundColor: Colors.red,
        backgroundColor: Green,
        title: const Text(
          'My Cart List',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Container(
        color: themewhiteCOlor,
        child: ListView.builder(
            itemCount: user.length,
            itemBuilder: ((context, index) {
              final users = user[index];
              return Card(
                color: Green,
                semanticContainer: true,
                clipBehavior: Clip.hardEdge,
                child: SizedBox(
                  height:MediaQuery.of(context).size.height / 8, 
                  child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      leading: Container(
                       
                         width: MediaQuery.of(context).size.height / 8,
                        decoration: const BoxDecoration(
                          color: Vx.yellow100,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                    
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            users.thumbnail,
                            fit: BoxFit
                                .fill, 
                          ),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            users.itemsname,
                            style: const TextStyle(color: Color.fromARGB(255, 106, 219, 104)),
                          ),
                          Text(
                            users.price,
                            style: const TextStyle(color: Colors.amber,fontSize: 14),
                          ),
                           Text(
                           'Amonut:${users.amount}',
                            style: const TextStyle(color: themewhiteCOlor,fontSize: 14),
                          ),
                        ],
                      ),
                      trailing: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'BUY',
                            style: TextStyle(color: Vx.white, fontSize: 16),
                          ))),
                ),
              );
            })),
      ),
    );
  }
}
