import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text('The Magic Ball'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(45),
            child: Text(
              'Ask a question and click the ball! Let the ball decide of your life!!',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FlatButton(
            child: Image.asset('images/ball$ballNumber.png'),
            onPressed: randomNumber,
          ),
        ],
      ),
    );
  }

  void randomNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
