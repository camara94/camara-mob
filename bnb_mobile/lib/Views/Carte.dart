import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Carte extends StatefulWidget {
  //final Todo data;
  LatLng latlng;
  Carte({Key key, @required this.latlng}) : super(key: key);
  @override
  State createState() => CarteState();
}

//class CarteState extends State<Carte> {
//  //Todo data;
//  GoogleMapController mapController;
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: EdgeInsets.all(15.0),
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          Center(
//            child: SizedBox(
//              width: 300.0,
//              height: 200.0,
//              child: GoogleMap(
//                onMapCreated: _onMapCreated,
//                myLocationEnabled: false,
//                initialCameraPosition: CameraPosition(target: LatLng(51.5160895, -0.1294527))
//              ),
//            ),
//          ),
//          RaisedButton(
//            child: const Text('Go to London'),
//            onPressed: mapController == null ? null : () {
//              mapController.animateCamera(CameraUpdate.newCameraPosition(
//                const CameraPosition(
//                  bearing: 270.0,
//                  target: LatLng(51.5160895, -0.1294527),
//                  tilt: 30.0,
//                  zoom: 17.0,
//                ),
//              ));
//            },
//          ),
//        ],
//      ),
//    );
//  }
//
//  void _onMapCreated(GoogleMapController controller) {
//    setState(() { mapController = controller; });
//  }
//}

class CarteState extends State<Carte> {
  //Todo data;
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Localisation")),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child:
                    GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        bearing: 270.0,
                        target: widget.latlng,
                        //target: LatLng(51.5160895, -0.1294527),
                        tilt: 30.0,
                        zoom: 17.0,
                      ),
                    ),
//            Column(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[
//                Center(
//                  child:
//                  SizedBox(
//                    width: 300.0,
//                    height: 200.0,
//                    child:
//                  ),
//                ),
//                RaisedButton(
//                  child: const Text('Go to London'),
//                  onPressed: mapController == null ? null : () {
//                    mapController.animateCamera(
//                      CameraUpdate.newCameraPosition(
//                        const CameraPosition(
//                          bearing: 270.0,
//                          target: LatLng(51.5160895, -0.1294527),
//                          tilt: 30.0,
//                          zoom: 17.0,
//                        ),
//                      )
//                    );
//                  },
//                ),
//              ],
//            ),
          ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() { mapController = controller; });
  }
}