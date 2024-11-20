import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:om/Auth/login.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  change() {
    Future.delayed(const Duration(seconds: 4), () {
   Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    });
  }

  @override
  void initState() {
    change();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Green,
      body: Center(
        child: Column(
          children: [
            150.heightBox,
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset('images/s.json'),
                )),
            "Krishi Kanti"
                .text
                .color(const Color.fromARGB(255, 25, 106, 11))
              .fontWeight(FontWeight.bold)
                .size(30)
                .make(),
            "next generation krishi"
                .text
                .color(const Color.fromARGB(255, 253, 253, 253))
                   .fontWeight(FontWeight.bold)
                .size(4)
                .make(),
            200.heightBox,
            "Developed"
                .text
                
                .size(12)
                .color(const Color.fromARGB(255, 255, 255, 255))
                .make(),
            "By".text.size(12).color(themewhiteCOlor).make(),
            "Team Asmit"
                .text
                   .fontWeight(FontWeight.bold)
                .size(0.1)
                .color(const Color.fromARGB(255, 255, 255, 255))
                .make(),
          ],
        ),
      ),
    );
  }
}
