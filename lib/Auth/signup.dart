import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:velocity_x/velocity_x.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var  themecolor = themewhiteCOlor;
  var titlecolor= Green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Green,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [

                 Align(
                child: SizedBox(
                  height: 150,
                  width: 400,
                  child: Image.asset('images/hearderbanner.png',)
                ),
              ),
          
              Align(
                child: SizedBox(
                  height: 250,
                  width: 500,
                  child: Lottie.asset('images/ch.json',),
                ),
              ),
                const Divider(
                  thickness: 2,
                  color: themewhiteCOlor,
                  endIndent: 60,
                  indent: 60,
                ),
              
                Align(
                  alignment: Alignment.centerLeft,
                  child: 'Sign up'
                      .text
                      .color(themecolor)
                      .size(30)
                      .fontWeight(FontWeight.bold)
                    
                      .make(),
                ),
                10.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: 'please fill the inputs below'
                      .text
                      .size(14)
                      .color(themecolor)
                    
                      .make(),
                ),
                Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'name',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email address',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'password',
                      ),
                    ),
                    20.heightBox,
                    TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 7, 100, 21)),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10.0),
                          ),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all<Size>(
                            const Size(200.0,
                                40.0), // Adjust the width and height as needed
                          ),
                        ),
                        onPressed: () {},
                        child: 'Sign Up'
                            .text
                            .color(themecolor)
                            
                            .size(18)
                            .make()),
                    30.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: 'Already have an acconut?'
                              .text
                              .color(titlecolor)
                             
                              .make(),
                        ),
                        TextButton(
                          onPressed: () {
                           
                          },
                          child: 'Sign In '
                              .text
                              .color(Green)
                            
                              .make(),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
