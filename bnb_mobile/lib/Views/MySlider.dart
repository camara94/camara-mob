import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:bnb_mobile/Models/Todo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bnb_mobile/Views/Carte.dart';

class MySlider extends StatefulWidget {
  final Todo data;
  // In the constructor, require a Todo
  MySlider({Key key, @required this.data}) : super(key: key);

  @override
  _MySlider createState() => _MySlider();
}

class _MySlider extends State<MySlider> {
  Todo data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.title),
      ),
      body: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Container(
            height: 450.0,
//            child: Text("Slider Here"),
            child: Carousel(
              boxFit: BoxFit.cover,
              images: generatePics(),
              autoplay: true,
              // animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 3000),
              dotSize: 5.0,
              indicatorBgPadding: 2.0,
            ),
          ),

         
//          Divider(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  width: 100,
                  child: IconButton(
  //                padding: EdgeInsets.only(left: 100),
                    icon:Icon(
                      Icons.location_on,size:60,
                      color: Colors.blue[500],
                    ),
                    onPressed: () {
                      openCarte(context);
                    },
                  ),
                ),

                SizedBox(
                  width: 100,
                  child: IconButton(
  //                  padding: EdgeInsets.only(left: 60),
                    icon:Icon(
                      Icons.mail,size:60,
                      color: Colors.blue[500],
                    ),
                    onPressed:_launchmailer,
                  ),
                ),

                SizedBox(
                    width: 100,
                    child: IconButton(
//                  padding: EdgeInsets.only(left: 60),
                  icon:Icon(
                    Icons.call,size:60,
                    color: Colors.blue[500],
                  ),
                  onPressed:_launchcaller,
                ),
                ),
              ],
            ),
          )
          
        ],
      ),
    ),   
    );
  }


  _launchcaller()  async 
  {
    var url = "tel:" + widget.data.phone;

    if (await canLaunch(url)) 
    {
      await launch(url);
      print(url);
    }

    else{
      throw 'Could not launch $url';
    }
    

  }

  _launchmailer()  async 
  {
    var url = "mailto:contact@bnb.tn?subject=[Bnb Annoncer service ]: Query&body=Cher M./Mme/Mlle:";

    if (await canLaunch(url)) 
    {
      await launch(url);
      print(url);
    }

    else{
      throw 'Could not launch $url';
    }
    

  }



  generatePics(){
      var ls = [];
      widget.data.gallery.forEach((str){
        ls.add(CachedNetworkImageProvider(str));//Cette fonction va cacher l'imgae, et puis, meme si tu redemarrer votre portable, L'image va ertre charger apartir de cache la prochaine fois :D
      });
      return ls;
  }

  openCarte(context){
//    print(widget.data.unparsedJson);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Carte(latlng: widget.data.map_location, ),
      ),
    );
  }
}