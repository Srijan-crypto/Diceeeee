import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: DicePage()
          //DicePage(),
          ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var left = 1;
  var right = 1;
  void func() {
    setState(() {
      right = Random().nextInt(6) + 1;
      left = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextButton(
                onPressed: () {
                  func();
                  // print("Left = $left");
                },
                child: Image.asset('images/dice$left.png'),
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextButton(
                onPressed: () {
                  func();
                  // print("Right = $right");
                },
                child: Image.asset('images/dice$right.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
