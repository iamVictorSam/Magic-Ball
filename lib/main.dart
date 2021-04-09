import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int random = 3;
  // var num = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        // elevation: 0,
        title: Text(
          'Magic ball',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.teal,
      body: Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                random = Random().nextInt(5) + 1;
                // random = num;
              });
              print(random);
            },
            child: Image.asset('images/ball$random.png'),
          ),
        ),
      ),
    );
  }
}
