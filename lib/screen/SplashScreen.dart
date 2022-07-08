import 'dart:async';

import 'package:bank_app/screen/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
        (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade300,
      body: Center(
          child: Text("Bank App", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),)
      ),
    );
  }
}
