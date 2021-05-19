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
  int _counter = 0;

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

    void incrementCounter() {
      setState(() {
        _counter++;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: (){
          changeBackground();
          incrementCounter();
        },
        child:Scaffold(
          appBar: AppBar(
            title: Text("Number of clicks: $_counter",
              style: TextStyle(fontFamily: 'Appetite',
                  fontSize: 22.0
              ),
            ),
          ),
          backgroundColor: _backgroundColor,
          body: Center(
              child: Text(
                  "Hey there",
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

