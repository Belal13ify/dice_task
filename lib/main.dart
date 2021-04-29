import 'package:flutter/material.dart';
import 'dart:math' show Random;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var random = Random();
  int number = 1;

  randomImage() {
    setState(() {
      number = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'GFG | Dice',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: randomImage,
                child: Image.asset(
                  'images/dice$number.png',
                  width: 350,
                ))
          ],
        ),
      ),
    ));
  }
}
