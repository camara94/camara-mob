import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dieu est grand',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dieu est grand'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Text('You have pushed the button this many times: '),
              Text('$count'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++; 
            });
          },
        ),
      ),
    );
  }
}