// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Dicee'),
            backgroundColor: Colors.blueGrey.shade900),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var number, number1, number2, number3;

  void DiceNumber() {
    setState(() {
      number = Random().nextInt(6) + 1;
      number1 = Random().nextInt(6) + 1;
    });
  }

  void DiceNumber1() {
    setState(() {
      number2 = Random().nextInt(6) + 1;
      number3 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft, end: Alignment.bottomRight,
              // ignore: prefer_const_literals_to_create_immutables
              colors: [Colors.green.shade900, Colors.black])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Player 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: DiceNumber,
                          child: Image.asset('images/dice$number.png')),
                    ),
                    Expanded(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: DiceNumber,
                          child: Image.asset('images/dice$number1.png')),
                    ),
                  ],
                ),
                SizedBox(),
                Text(
                  'Player 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: DiceNumber1,
                          child: Image.asset('images/dice$number2.png')),
                    ),
                    Expanded(
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: DiceNumber1,
                          child: Image.asset('images/dice$number3.png')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// () {
//                         setState(() {
//                           rightDiceNumber = Random().nextInt(6) + 1;
//                         });
//                       },