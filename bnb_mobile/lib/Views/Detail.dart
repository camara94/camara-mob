import 'package:flutter/material.dart';
import 'package:bnb_mobile/Models/Todo.dart';



class Detail extends StatelessWidget {
  // Declare a field that holds the Todo
  final Todo data;
  final int i = 0;   
  // In the constructor, require a Todo
  Detail({Key key, @required this.data}): super(key: key);

  /*void _next() {
    i = i<data.gallery.length-1? i+1: data.gallery.length;
  }
  void _prev() { 
     i = i>0? i-1:0;
  }*/
  
  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title)
      ),
      body: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Image(image: NetworkImage(data.gallery[i]),fit: BoxFit.cover,width: 300,height: 200,),
            RaisedButton(
              child: Text('Next'),
              onPressed: (){
                print('You pressed');
              },
              
            ),
            RaisedButton(
              child: Text('Prev'),
              onPressed: (){
                print('You pressed');
              },
            )
          ],
        ),
        elevation: 5,
      ),
    );
  }
}
