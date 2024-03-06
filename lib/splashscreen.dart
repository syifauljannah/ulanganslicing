import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ulanganslicing/registration.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: -20,
              left: -100,
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 225, 251, 50),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
                top: -100,
                left: -20,
                child: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(143, 225, 251, 50),
                    shape: BoxShape.circle,
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: const Offset(10.0, 190.0),
                  child: Image.asset(
                    'images/splashscreen.png',
                    height: 100,
                    width: 150,
                  ),
                ),
                const SizedBox(
                  height: 250.0,
                ),
                const Text(
                  'Gets things with TODs',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(73, 10, 73, 15),
                    backgroundColor: Colors.blue.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => registration(),
                      ),
                    );
                  },
                  child: const FittedBox(
                    child: Text('Get Started',
                        style: TextStyle(
                          color: Color.fromRGBO(240, 244, 243, 1),
                          fontFamily: 'Poppins',
                          fontSize: 18,
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
