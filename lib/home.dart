import 'package:firebase_app/components/components.dart';
import 'package:firebase_app/login.dart';
import 'package:firebase_app/register.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return MyLogin();
                  },
                ));
              },
              child:
                  buildContanerButton(text: "LOGIN", color: Colors.deepOrange),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyRegister();
                    },
                  ));
                },
                child: buildContanerButton(
                    text: "SIGN UP", color: Colors.lightBlue)),
          ],
        ),
      ),
    );
  }
}
