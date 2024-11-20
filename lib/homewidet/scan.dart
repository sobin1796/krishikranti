import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class ScanItems extends StatefulWidget {
  const ScanItems({super.key});

  @override
  State<ScanItems> createState() => _ScanItemsState();
}

class _ScanItemsState extends State<ScanItems> {
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
        elevation: 4,
        title: const Text(
          'Rice Detection',
          style: TextStyle(
              color: Vx.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Green,
        centerTitle: true,
      ),
      body: Container(
        color: themewhiteCOlor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Green,
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: pickedImage != null
                          ? Image.file(
                              pickedImage!,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'images/veg1.webp',
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: selectFile,
                        child: const Text(
                          'Upload Image',
                          style: TextStyle(
                              color: Green,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality to scan the image here
                        },
                        child: const Text(
                          'Scan Image',
                          style: TextStyle(
                              color: Green,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            'Result'.text.size(20).color(Green).make(),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'The rice is suffering from heavy diseases. There are many reasons for this, and it will directly affect production.',
                  maxLines: 6,
                  style: TextStyle(color: Green, fontSize: 16),
                ),
              ),
            ),
            'Remedies'.text.size(20).color(Green).make(),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Here are some remedies for the rice diseases affecting production.',
                  maxLines: 6,
                  style: TextStyle(color: Green, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
