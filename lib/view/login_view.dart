import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'package:local_auth/local_auth.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Image.asset(
              "lib/images/background.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/images/logoNF.png",
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.only(top: 200),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(62),
                    topRight: Radius.circular(62),
                  ),
                ),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 111, 7, 0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 111, 7, 0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: Center(
                          child: Text(
                            'ACESSAR',
                            style: TextStyle(
                              color: Color.fromARGB(255, 111, 7, 0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Esqueceu a senha?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 111, 7, 0),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/images/digital.gif'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
