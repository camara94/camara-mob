import 'package:flutter/material.dart';
import 'package:bnb_mobile/Models/Location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Todo {
  var unparsedJson;
  int id;
  var  title;
  var author;
  var  price; 
  var  featured_image; 
  var  location; 
  var  type ;
  var  contract; 
  var  content;
  var  ref; 
  var  owner; 
  var  phone; 
  var  year_built;
  var map_location;
  var address; 
  var gallery = [];

  var rooms;
  var beds;
  var baths;
  var garages;
  var home_area;
  var lot_dimensions;
  var lot_area;
  //Location map_location;
  var agents;
  var material;
  var amenity;
  
      Todo(var data){
      this.unparsedJson = data;
      this.title = data['title'];
      this.year_built = data['year_built'];
      this.id = data['id'];
      this.author = data['author'];
      this.price = data['price']; 
      this.featured_image = data['featured_image']; 
      this.location = data['location']; 
      this.type = data['type'] ;
      this.contract = data['contract']; 
      this.content = data['content'];
      this.ref = data['ref']; 
      this.owner = data['owner'];
      //Fetching Map Location
      Map<String, dynamic> loc = data["map_location"];
      try{
        this.map_location = LatLng(double.parse(loc["latitude"]), double.parse(loc["longitude"]));
      }catch(e){
        this.map_location = LatLng(38.2836106, 10.4396702);
      }
      //Fetching Gallery
      for(var i=0; i< data['gallery'].length; i++)
      {
        this.gallery.add(data['gallery'][i]);
      }
      this.rooms  = data['rooms'];
      this.beds = data['beds'];
      this.baths  = data['baths'];
      this.garages  = data['garages'];
      this.home_area  = data['home_area'];
      this.lot_dimensions = data['lot_dimensions'];
      this.lot_area = data['lot_area'];
      //this.map_location = data['map_location'];
      this.agents = data['agents'];
      this.material = data['material'];
      this.amenity = data['amenity'];
    }
}