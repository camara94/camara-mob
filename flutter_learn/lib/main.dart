import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyHomeState createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyApp> {
  String statement = 'Before, state change.';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Dieu est grand',
     home: Scaffold(
       appBar: AppBar(
         title: Text(
           'SetState Demo',
         ),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               statement,
             ),
             Padding(
               padding: EdgeInsets.all(8.0),
               child: RaisedButton(
                 child: Text('Call setState'),
                 onPressed: () {
                   _callStateChange();
                 },
               ),
             )
           ],
         ),
       ),  
     ),
    );
    
  }

  _callStateChange() {
      setState(() {
           this.statement = "Congratulation, you are changing ";
      });
  }
}