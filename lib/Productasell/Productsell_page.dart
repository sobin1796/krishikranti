import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:om/Api/itempost_api.dart/itempost_Api.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:om/homewidet/buttombar_naviagation.dart';
import 'package:velocity_x/velocity_x.dart';

const List<String> list = <String>[
  'vegatable',
  'Fruits',
  'Milks',
  'Flowers'
]; // languages ko lagi rakheko ho hai
String dropdownValue = list.first;

class ProductsaleItem extends StatefulWidget {
  const ProductsaleItem({Key? key}) : super(key: key);

  @override
  _AddCoursePageState createState() => _AddCoursePageState();
}

class _AddCoursePageState extends State<ProductsaleItem> {
  TextEditingController courseNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  File? pickedImage;

  Future<void> selectFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(type: FileType.image);
      if (result == null) return;

      setState(() {
        pickedImage = File(result.files.single.path!);
      });
    } catch (e) {
      // Handle exception
      print("Error picking file: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Green,
        iconTheme: const IconThemeData(color: themewhiteCOlor),
        centerTitle: true,
        title: const Text(
          "Sell Vegetable",
          style: TextStyle(
              color: themewhiteCOlor,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: context.screenWidth,
          height: context.screenHeight,
          color: themewhiteCOlor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              100.heightBox,
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  color: Green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    5.heightBox,
                    const Text(
                      "Course Details",
                      style: TextStyle(
                        color: themewhiteCOlor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: themewhiteCOlor,
                      endIndent: 60,
                      indent: 60,
                    ),
                    TextFormField(
                      controller: courseNameController,
                      decoration: const InputDecoration(
                        labelText: 'Name:',
                        labelStyle: TextStyle(
                          color: themewhiteCOlor,
                        ),
                        border: UnderlineInputBorder(),
                      ),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 137, 165, 204),
                      ),
                    ),
                    TextFormField(
                      controller: priceController,
                      decoration: const InputDecoration(
                        labelText: 'Price:',
                        labelStyle: TextStyle(
                          color: themewhiteCOlor,
                          fontWeight: FontWeight.bold,
                        ),
                        border: UnderlineInputBorder(),
                      ),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 137, 165, 204),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(alignment: Alignment.bottomLeft,
                            child: TextButton(
                                onPressed: selectFile,
                                child: const Text(
                                  'ThumbnailImage:(click)',
                                  style: TextStyle(
                                      color:Color.fromARGB(255, 181, 199, 182) , fontSize: 16),
                                ))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'Category:',
                              style: TextStyle(
                                color: Color.fromARGB(255, 214, 177, 27),
                                fontSize: 16,
                              ),
                            ),
                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(
                                Icons.arrow_downward,
                                size: 16,
                                color: themewhiteCOlor,
                              ),
                              elevation: 10,
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              underline: Container(
                                height: 2,
                                color: themewhiteCOlor,
                              ),
                              items: list.map<DropdownMenuItem<String>>(
                                (String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        color: Color.fromARGB(255, 9, 147, 14),
                                        fontSize: 16,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    10.heightBox,
                    "Description".text.color(themewhiteCOlor).make(),
                    TextField(
                      style: const TextStyle(
                        color: Color.fromARGB(255, 137, 165, 204),
                      ),
                      controller: descriptionController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 2,
                      keyboardType: TextInputType.multiline,
                    ),
                    10.heightBox,
                    20.heightBox,
                  ],
                ),
              ),
              65.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Green,
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 63, 73, 102),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.centerLeft,
                      height: 60,
                      width: 100,
                      child: Align(
                        alignment: Alignment.center,
                        child: 'Cancel'.text.color(Colors.white).make(),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      var data = {
                        "Name": courseNameController.text,
                        "Price": priceController.text,
                        "description": descriptionController.text,
                        "category": dropdownValue,
                      };
                      ItempostApi.addProduct(data);
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Green,
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(255, 63, 73, 102),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Align(
                        alignment: Alignment.center,
                        child: 'Add Section'.text.color(Colors.white).make(),
                      ),
                      height: 60,
                      width: 100,
                    ),
                  ),
                ],
              ),
              5.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
