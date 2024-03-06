import 'package:flutter/material.dart';
import 'package:ulanganslicing/dasboard.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
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
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome back',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Transform.translate(
                  offset: const Offset(0.0, 20.0),
                  child: Image.asset(
                    'images/ibuanak.png',
                    height: 86,
                    width: 83,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'Enter Your Email',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'Enter password',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Forget password ?',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(80, 194, 201, 1),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(73, 10, 73, 15),
                    backgroundColor: Colors.blue.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DashBoard(),
                      ),
                    );
                  },
                  child: const FittedBox(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromRGBO(240, 244, 243, 1),
                        fontFamily: 'Poppins',
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 15, 10, 10),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.5699999332,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Already have an account ? ',
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.5699999332,
                              color: Color.fromRGBO(80, 194, 201, 1),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
