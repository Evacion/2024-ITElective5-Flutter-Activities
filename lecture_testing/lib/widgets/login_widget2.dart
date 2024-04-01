import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LoginWidget2 extends StatefulWidget {
  const LoginWidget2({super.key});

  @override
  State<LoginWidget2> createState() => _LoginWidget2State();
}

class _LoginWidget2State extends State<LoginWidget2> {
  @override
  Widget build(BuildContext context) {
    double cardHeight = 600;
    double cardWidth = 500;

    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + (kBottomNavigationBarHeight + kToolbarHeight));
    
    // Orientation screenOrientation = MediaQuery.of(context).orientation;
    return SingleChildScrollView(
      child: SizedBox(
        width: screenWidth,
        child: Column(
          children: [
            Container(
              height: cardHeight,
              width: cardWidth,
              margin: const EdgeInsets.all(15),
              child: Card(
                // clipBehavior: Clip.antiAlias,
                child: Center(
                  child: Column(
                    children: [
                      const Spacer(),
                      Image(
                        image: Image.asset("lib/assets/addu/addu-seal-colorized.png").image,
                        height: 120,
                      ),
                      const AutoSizeText("ATENEO DE DAVAO UNIVERSITY", textScaleFactor: 3, textAlign: TextAlign.center,),
                      const AutoSizeText("Community Center\nAsset Management System", textScaleFactor: 1.2, textAlign: TextAlign.center,),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )),
                          ),
                          child: const Row(
                            children: [
                              Text("Login with Google", style: TextStyle(color: Colors.black),),
                              Spacer(),
                              Icon(Icons.mail)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )),
                          ),
                          child: const Row(
                            children: [
                              Text("Login as Guest", style: TextStyle(color: Colors.black),),
                              Spacer(),
                              Icon(Icons.person)
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            const AutoSizeText("Powered by:", textScaleFactor: 0.75,),
            Image(
              image: Image.asset("lib/assets/addu/arisen-lab-caption.png").image,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}