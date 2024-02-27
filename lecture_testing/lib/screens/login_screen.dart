// ignore_for_file: file_names

import 'package:flutter/material.dart';

bool isChecked = false;

class LoginScreen extends StatefulWidget {

  final ImageProvider loginImage;


  const LoginScreen({super.key, required this.loginImage,});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double cardHeight = 600;
    double cardWidth = 1200;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + (kBottomNavigationBarHeight + kToolbarHeight));
    return Card(
          clipBehavior: Clip.antiAlias,
          // elevation: 0,
          shape: const RoundedRectangleBorder(
            // side: BorderSide(color: Theme.of(context).colorScheme.outline,),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Stack(
            children: [
              FittedBox(
                fit: BoxFit.fitHeight,
                child: SizedBox(
                  height: cardHeight < screenHeight ? cardHeight: screenHeight,
                  width: cardWidth < screenWidth ? cardWidth : screenWidth,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(25,50,75,50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.all(15),
                                child: const Text("Welcome Back!", textScaler: TextScaler.linear(2), textWidthBasis: TextWidthBasis.longestLine,)
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 15),
                                child: const Text("Please Log in to your account.", textScaler: TextScaler.linear(0.8), textWidthBasis: TextWidthBasis.longestLine, style: TextStyle(
                                  color: Colors.grey,
                                ),),
                              ),
                              const Spacer(),
                              // Divider(color: Colors.grey[75], height: 1,),
                              Container(
                                margin: const EdgeInsets.all(15),
                                // padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Email',
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Password',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      // width: cardWidth*0.3 > 100 ? cardWidth*0.4 : 200,
                                      child: Row(
                                        // direction: Axis.horizontal,
                                        // alignment: WrapAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  // checkColor: Colors.white,
                                                  // fillColor: MaterialStateProperty.resolveWith(getColor),
                                                  value: isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      isChecked = value!;
                                                    });
                                                  },
                                                ),
                                                const Text("Remember Me",
                                                  textWidthBasis: TextWidthBasis.parent,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          const SizedBox(
                                            // width: 150,
                                            child: Text("Forgot Password?",
                                              textWidthBasis: TextWidthBasis.parent,
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ]
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            height: 50,
                                            width: 155,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)
                                                )),
                                              ),
                                              child: const Text("Login", style: TextStyle(color: Colors.white),),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 35,),
                                        Expanded(
                                          child: SizedBox(
                                            height: 50,
                                            width: 155,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(5),
                                                    side: const BorderSide(
                                                      width: 1,
                                                      color: Colors.greenAccent,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: const Text("Create Account",),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // Spacer(),
                                  ],
                                ),
                              ),
                              const Expanded(
                                child: Text("By sign up you agree to our term and that you have read our data policy.", 
                                  textScaler: TextScaler.linear(1),
                                  textWidthBasis: TextWidthBasis.parent,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // height: screenHeight,
                        width: cardWidth < screenWidth ? cardWidth*0.5 : screenWidth*0.5,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: widget.loginImage,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: cardHeight < screenHeight ? cardHeight: screenHeight,
                width: cardWidth < screenWidth ? cardWidth : screenWidth,
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                    shape: MaterialStateProperty.all<CircleBorder>(const CircleBorder()),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: const Icon(Icons.play_arrow, color: Colors.white,),
                  ),
                ),  
              ),
            ],
          )
        );
  }
}