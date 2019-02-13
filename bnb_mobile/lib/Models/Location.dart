class Location {
  String lat;
  String long;
 // Location(this.lat, this.long);
 Location(var data){
     this.lat = data["latitude"];
     this.long = data["longitude"];

 }
}