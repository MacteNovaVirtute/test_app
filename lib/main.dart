import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {

    void changeBackground(){
      final random = Random();
      final red = random.nextInt(255);
      final green = random.nextInt(255);
      final blue = random.nextInt(255);
      setState((){
        _backgroundColor = Color.fromRGBO(red, green, blue, 1);
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: changeBackground,
        child:Scaffold(
          backgroundColor: _backgroundColor,
          body: Center(
              child: Text(
                  "Hey There",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 80.0,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,))
          ),
        ),
      ),
    );
  }
}