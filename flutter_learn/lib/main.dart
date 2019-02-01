import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dieu est grand!!!',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(
       onPressed: (){print('Floatting Action Button');},
       child: Icon(Icons.add),
       backgroundColor: Colors.black,
     ),
     appBar: AppBar(
       backgroundColor: Colors.black,
       title: Text(
         'Gloire à Dieu !!!',  
       ),
       centerTitle: true,
       leading: IconButton(
         icon:Icon(Icons.settings),
         onPressed:(){print('Settings');}
       ),
       actions: <Widget>[
         IconButton(
           icon: Icon(Icons.search),
           onPressed:(){print('Search');}
         ),
         IconButton(
           icon: Icon(Icons.menu),
           onPressed:(){print('Menu');}
         ),
       ]
     ),
     body: Center(
       child: Container(
         constraints: BoxConstraints.expand(width: 300),
         decoration: BoxDecoration(
           color: Colors.lightBlue,
           border: Border.all(width: 3.0), 
           borderRadius: BorderRadius.circular(15),  
         ),
         child: Text(
           'Bonjour Camara Laby Damaro !!!',
           style: TextStyle(
             fontFamily: 'Verdana',
             fontSize: 20.0,
             fontWeight: FontWeight.w800,
           )
         ),
       )
     ),
    );
  }
}