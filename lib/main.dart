import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Address()
    );
  }
}

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool cameraMoveStop = false;

  List<AddressModel> address =  [
    AddressModel(
      lat:51.807979,
      long: 10.340948,
    ),
    AddressModel(
      lat:51.807768,
      long: 10.341856,
    ),
    AddressModel(
      lat:51.807204,
      long: 10.342045,
    ),
    AddressModel(
      lat:51.808285,
      long: 10.341562,
    ),
    AddressModel(
      lat:51.808013,
      long: 10.342656,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//                  height: SizeConfig.screenHeight/1.3,
        child: GoogleMap(
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          myLocationEnabled: true,
          compassEnabled: false,
          myLocationButtonEnabled: false,
          initialCameraPosition: CameraPosition(
            target: LatLng(address[0].lat, address[0].long),
            zoom: 16.4746,
          ),
          markers: Set<Marker>.of(
            <Marker>[
              Marker(
                  draggable: true,
                  markerId: MarkerId("1"),
                  position: LatLng(address[0].lat, address[0].long),
                  icon: BitmapDescriptor.fromAsset('images/boy.png'),
                  infoWindow: InfoWindow(
                    title: "Ana",
                  )
              ),
              Marker(
                draggable: true,
                markerId: MarkerId("2"),
                position: LatLng(address[1].lat, address[1].long),
                icon: BitmapDescriptor.fromAsset('images/boy.png'),
                infoWindow:  InfoWindow(
                  title: "Ana",
                )
              ),
              Marker(
                draggable: true,
                markerId: MarkerId("3"),
                position: LatLng(address[2].lat, address[2].long),
                icon: BitmapDescriptor.fromAsset('images/boy.png'),
                infoWindow:  InfoWindow(
                  title: "Ana",
                )
              ),
              Marker(
                draggable: true,
                markerId: MarkerId("4"),
                position: LatLng(address[3].lat, address[3].long),
                icon: BitmapDescriptor.fromAsset('images/boy.png'),
                infoWindow:  InfoWindow(
                  title: "Ana",
                )
              ),
              Marker(
                draggable: true,
                markerId: MarkerId("5"),
                position: LatLng(address[4].lat, address[4].long),
                icon: BitmapDescriptor.fromAsset('images/boy.png'),
                infoWindow:  InfoWindow(
                  title: "Ana",
                )
              )
            ],
          ),

        ),
      ),
    );
  }
}


class AddressModel {
  double lat ;
  double long ;

  AddressModel({this.lat , this.long});
}
