import 'package:flutter/material.dart';

List<String> content = [
  'one',
  'two',
  'three',
  '4',
  'one',
  'two',
  'three',
  '4',
  'one',
  'two',
  'three',
  '4',
  'one',
  'two',
  'three',
  '4',
  'one',
  'two',
  'three',
  '4',
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Dieu est grand',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){print('Floatting button action');},
        child: Icon(Icons.add),
      ),
      appBar:AppBar(
        backgroundColor: Colors.black,
        title:Text('Dieu est grand'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: (){print('Settings');},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){print('Search');},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){print('Menu');},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: content.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(content[index]),
          );
        },
      ),
    );
  }
}