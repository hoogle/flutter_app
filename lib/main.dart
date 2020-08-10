import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: new MyGridview(),
));

class MyGridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = 'Grid view';
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text(title),
        ),
        //body: GridView.count(
        //  crossAxisCount: 2,
        //  childAspectRatio: 1.25,
        //  children: List.generate(100, (index) {
        //    return Card(child:
        //      Container(
        //        color: Color.fromARGB(150, 44, 192, 79),
        //        child: Text('Index: $index'),
        //      ),
        //  );
        // ),
        //),

        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 1.25,
              ),
          itemBuilder: (context, index) {
            return Card(child:
              Container(
                color: Color.fromARGB(150, 44, 192, 79),
                child: Text('Index: $index'),
              ),
            );
          }
        ),
      ),
    );
  }
}

class MyNetworkImage extends StatelessWidget{
  final String bannerImage = 'https://ci6.googleusercontent.com/proxy/xuDwJiAdT0iIQzdmIebaazEY9pzcXmki64y9VOFjtbrrIaEgLrT-WM2qwCQLf2WVE5SaSSOwJaiMznw9RIhdNlXr0i6JvzTj1Z0pBMbDFf4gd6078j45RgO7TvZMvkMuz2Wbxt_slVDd=s0-d-e1-ft#http://mailmall.post.gov.tw/post_a/template/20200722736bf/1090801edm/1090801edm_03.jpg';
  @override
  Widget build(BuildContext context) {
    //debugPaintSizeEnabled = true;
    return Scaffold(
      appBar: AppBar(
        title: Text('Network image'),
      ),
    body:
      Image.network(
        bannerImage,
        height: 200,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.scaleDown,
      ),
      //Image.asset('lib/images/blackjack.jpg'),
    );
  }
}
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