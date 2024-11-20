import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:om/Auth/signup.dart';
import 'package:om/constat/color_Collection.dart';
import 'package:om/homewidet/buttombar_naviagation.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                  height: 300,
                  width: 500,
                  child: Lottie.asset('images/loginImage.json',),
                ),
              ),
              const Divider(
                thickness: 2,
                color:themewhiteCOlor,
                endIndent: 60,
                indent: 60,
              ),
              
              Align(
                alignment: Alignment.centerLeft,
                child: 'Log IN'
                    .text
                    .color(themewhiteCOlor)
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
                    .color(themewhiteCOlor)
                  
                    .make(),
              ),
              Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Person@gmail.com',
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color.fromARGB(255, 65, 60, 75),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                    obscureText: _obscureText,
                  ),
                  20.heightBox,
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 7, 120, 11)),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
                    },
                    child: 'Log In'
                        .text
                        .color(themewhiteCOlor)
                       
                        .size(18)
                        .make(),
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: 'Forgot password ?'
                            .text
                            .color(themewhiteCOlor)
                           
                            .make(),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                        },
                        child: 'Sign up  '
                            .text
                            .color(themewhiteCOlor)
                        
                            .make(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
