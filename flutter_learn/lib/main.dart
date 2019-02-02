import 'package:flutter/material.dart';
String src = 'https://shoesyourpath.com/wp-content/uploads/2015/12/cascades-kuang-si-luang-prabang-laos.jpg';
var assetsImage = AssetImage('images/laos.jpg');
var image = Image(image:assetsImage,fit: BoxFit.cover,);
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dieu est grand !!!',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        onPressed:(){print('You press the flotting button Add!');}
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Gloire à Dieu !!!',
        ),
        centerTitle:true,
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed:(){print('You press the button Settings!');}
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed:(){print('You press the button Search!');}
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed:(){print('You press the button Menu!');}
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.add_alarm, size: 60.0,),
          Text('Alarme',style: TextStyle(fontSize:20.0),),
          Icon(Icons.add_shopping_cart, size: 60.0,),
          Text('Do shopping', style: TextStyle(fontSize:20.0),),
        ],
      )
    );
  }
}