import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bnb_mobile/Models/Todo.dart';
import 'package:bnb_mobile/Views/MySlider.dart';
class StarWarsData extends StatefulWidget {
  final List  data;
  StarWarsData({Key key, @required this.data}) : super(key: key);
  @override
  StarWarsDataState createState() => StarWarsDataState();
}


class StarWarsDataState extends State<StarWarsData> {
   static int pages = 1;
  
  List data;
  Future<String> getAnnonces(int i) async {
    String url = 'https://www.bnb.tn/annonce.php?contracts=0&locations=0&property_types=0&page=' '$pages';
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
        backgroundColor: Colors.lightBlue,
        leading: Icon(Icons.home,color: Colors.white,),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            pages++;
           this.getAnnonces(pages);
          });
        },
      ),
      body: myList()
      
    );
  }

  @override
    void initState() {
      super.initState();
      this.getAnnonces(pages);
    }

  myList(){
    if(data == null){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return ListView.builder(
      itemCount: data == null ? 0 : data.length,
      itemBuilder: (BuildContext context, int index){
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(6.0, 3.0, 6.0, 3.0),
                      child:Image.network(data[index]['featured_image'],),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          alignment: Alignment(0, 0),
                          width: 180,
//                           child:Text(data[index]['title']+'\n\n'+data[index]['price'] +' '+ 'DT\n\n'+data[index]['location'],),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(data[index]['title'], style: TextStyle(fontWeight: FontWeight.bold,),maxLines: 2,textAlign: TextAlign.left,),
                              Text(data[index]['price'], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlue),textAlign: TextAlign.left,),
                              Text(data[index]['location'], style: TextStyle(color: Colors.grey),textAlign: TextAlign.right,),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Icon(Icons.chevron_right,color:Colors.grey,size:50.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MySlider(data: Todo(data[index]) ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 2.0,
              color: Colors.grey,
            )
          ],
        );
      },

    );
  }
}