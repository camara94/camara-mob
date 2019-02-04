import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
 runApp(MaterialApp(
  home: StarWarsData(),
  ));
}


class Todo {
  final int id;
  final String title;
  final String author;
  final String price; 
  String featured_image; 
  final String location; 
  final String type ;
  final String contract; 
  final String content;
  final String ref; 
  final String owner; 
  final String phone; 
  final String year_built;
  final String address; 
  
    Todo(
      this.id,
      this.title,
      this.author,
      this.price,
      this.featured_image,
      this.type,
      this.contract,
      this.content,this.ref,
      this.address,
      this.phone,
      this.owner,
      this.location
      );
}


class StarWarsData extends StatefulWidget {
  List  data;
  StarWarsData({Key key, @required this.data}) : super(key: key);
  @override
  StarWarsDataState createState() => StarWarsDataState();
}

class StarWarsDataState extends State<StarWarsData> {
   static int pages = 1;
  
  List data;
  Future<String> getSWData(int i) async {
    String url = 'https://www.bnb.tn/annonce.php/contracts=0&locations=0&property_types=0&page=' '$pages';
    var res = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
     
     setState(() {
       var resBody = json.decode(res.body);
       //print(resBody);
       data = resBody;
       print(url);
     });
     return 'success';
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Bnb Tunisie"),
        backgroundColor: Colors.deepPurpleAccent
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            pages++;
           this.getSWData(pages);
          });
        },
      ),
      body:ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: Container(
              child: Image.network(data[index]['featured_image'],),
              width: 80,
              height: 80,
            ),
            title: Text(data[index]['title']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(data: data[index]),
                ),
              );
            },
          );
        },
        
      ) ,
      
    );
  }

  @override
    void initState() {
      super.initState();
      this.getSWData(pages);
    }
}



class DetailScreen extends StatelessWidget {
  // Declare a field that holds the Todo
  Todo data;

  // In the constructor, require a Todo
  DetailScreen({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        //child: Text(todo.description),
      ),
    );
  }
}