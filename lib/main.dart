import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: new MyListview(),
));

class MyListview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Listview'),
      ),
      body: ListView.builder(
        //itemCount: 10,
        itemBuilder: (context, idx){
          print(idx);
        return Card(
          child: Container(
            height:150,
            color: Colors.lightBlueAccent,
            child: Text('$idx'),
          ),
        );
      })
    );
  }
}
class MyTextfield extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled = true;
    TextEditingController controller = new TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('MyCard'),),
      body: TextField(
        controller: controller,
        onEditingComplete: (){
          print('onEditingComplete');
          print(controller.text);
        },
        decoration: new InputDecoration(
          icon: Icon(Icons.access_time),
          labelText: '日期',
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.cyan,
            ),
          ),
          helperText: '請輸入日期',
          hintText: '請輸入日期',
          suffix: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
          )
        ),
      ),
    );
  }
}
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