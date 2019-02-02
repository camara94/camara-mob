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
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title:Text('Map'),
            onTap: (){print('Map');},
          ),
          ListTile(
            leading:  Icon(Icons.search),
            title:Text('Search'),
            onTap:(){print('Search');}
          ),
          ListTile(
            leading: Icon(Icons.select_all),
            title: Text('Select All'),
            onTap: (){print('Select all');}
          ),
        ],
      ),
    );
  }
}