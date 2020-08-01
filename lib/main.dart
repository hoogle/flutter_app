import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: new HomePage2(),
));

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('First App by flutter'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            width: 100.0,
            height: 60.0,
          ),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            width: 100.0,
            height: 60.0,
          ),
        ],
      ),
    );
  }
}

class HomePage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePage2State();
}

class HomePage2State extends State<HomePage2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: () {
          setState(() {});
        },
      ),
      appBar: new AppBar(
        title: Text('First App by flutter'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: getColor(),
            width: 200.0,
            height: 200.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 3.0),
            color: getColor(),
            width: 200.0,
            height: 200.0,
          ),
        ],
      ),
    );
  }
  Color getColor(){
    return Color.fromARGB(
        255,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255)
    );
  }
}