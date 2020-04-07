import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice Game'),
        leading: Icon(Icons.games),
        backgroundColor: Colors.red[600],
      ),
      body: myApp(),
    ),
  ));
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  var leftDice = 2;
  var rightDice = 4;

  void updateDice(String dice) {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
    print('$dice dicee got clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                updateDice('Left');
              });
            },
            child: Image(
              image: AssetImage('images/dice$leftDice.png'),
            ),
          )),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  updateDice('Right');
                });
              },
              child: Image(
                image: AssetImage('images/dice$rightDice.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var leftDice = 3;
    var rightDice = 6;
    return Center(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left button got clicked!');
              },
              child: Image(
                image: AssetImage('images/dice$leftDice.png'),
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            child: FlatButton(
              onPressed: () {
                print("Right button got clicked!");
              },
              child: Image(
                image: AssetImage('images/dice$rightDice.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}


