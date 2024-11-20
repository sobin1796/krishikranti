import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:om/constat/style.dart';
import 'package:om/contoller/homecontroller.dart';
import 'package:om/homewidet/category.dart';
import 'package:om/homewidet/home_page.dart';
import 'package:om/homewidet/scan.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(Homecontroller());
    PageController pageController = PageController();

    var navigitem = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Scan',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.category),
        label: 'Category',
      ),
    ];

    var itembody = [
      ScanItems(),
      HomePage(),
      Categoryitems(),
    ];

    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          controller.currentnavIndex.value = index;
        },
        children: itembody,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentnavIndex.value,
          unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          iconSize: 30,
          selectedItemColor: const Color.fromARGB(255, 2, 194, 120),
          backgroundColor: Green,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(fontFamily: regular),
          items: navigitem,
          onTap: (value) {
            controller.currentnavIndex.value = value;
            pageController.animateToPage(
              value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
    );
  }
}
