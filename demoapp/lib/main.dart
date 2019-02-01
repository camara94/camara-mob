import 'package:flutter/material.dart';
String txt = "Baker Hughes, a GE company Fourth Quarter and Full-Year 2018 Earnings Conference Call. Jan 31, 2019 at 8:30 AM EST. For details, please view the press ";
void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dieu merci',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( 
        child:  IconButton(
          icon: Icon(Icons.add),
           onPressed: (){
          print('Floattin action');
        },
        ),
        backgroundColor: Colors.black,
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text(
           'Louange à Dieu!',
           style: TextStyle(
             fontFamily: 'Roboto',
             fontSize: 32.0,
           ),
        ),
        centerTitle:true,
        leading: IconButton(
          icon: Icon(Icons.settings),
          tooltip:'settings',
          onPressed: (){print('Settings!');},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: (){
              print('Search');
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            tooltip:'Menu de Navigation',
            onPressed: (){print('Menu');},
          )
        ],
      ),
      body: Example(),
    );
  }
}

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.only(top: 20.0, left: 20.0),
        child: Text(
          txt,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20.0,
            letterSpacing: 0.5,
            color: Colors.teal[600],
          ),),
      );
  }
}

