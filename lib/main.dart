import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: new HomePage2(),
));

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled = true;
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('First App by flutter'),
      ),
      body: Container(
        width: 300.0,
        height: 100.0,
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Text(
          'container',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0
          ),
        ),
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
            margin: EdgeInsets.all(10.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: getColor(),
              shape: BoxShape.circle
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            width: 200.0,
            height: 100.0,
            decoration: BoxDecoration(
                color: getColor(),
                borderRadius: BorderRadius.circular(8.0)
            ),
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