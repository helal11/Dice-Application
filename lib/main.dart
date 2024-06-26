import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('DicePage'),
          backgroundColor: Colors.yellow,
        ),
        body:  DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButton=1;
  int RightButton=1;
  void changeDiceFace(){
    setState(() {
      leftButton=Random().nextInt(6)+1;
      RightButton=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context){

  return Center(
  child: Row(
  children: <Widget>[
  Expanded(
  child: TextButton(

  onPressed: () {
  changeDiceFace();
  },
  child: Image.asset('images/dice$leftButton.png'),
  ),
  ),
  Expanded(
  child: TextButton(
  onPressed: (){
    changeDiceFace();
  },
  child: Image.asset('images/dice$RightButton.png'),
  ),
  ),
  ],
  ),
  );
  }
}
