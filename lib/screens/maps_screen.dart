import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:travel/maps/directions_repo.dart';
import 'package:travel/widgets/home_page_sidebar.dart';

class MapsScreen extends StatefulWidget {
  static String id = "MapsScreen";
  @override
  State<StatefulWidget> createState() {
    return MapsScreenState();
  }
}

class MapsScreenState extends State<MapsScreen> {
  late GoogleMapController _controller;
  Marker? _origin;
  Marker? _destination;
  CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(
        12.9716, 77.5946
    ),
    zoom: 11
  );

  List<Marker> list = [];

  @override
  void initState() {
    super.initState();
    list.add(
      Marker(
        markerId: MarkerId("Bangalore"),
        position: LatLng(
            12.9716, 77.5946
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Travel"
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition)
          );
        },
      ),
      drawer: Drawer(
        child: HomePageSideBar(),
      ),
      body: Stack(
        children: [
          GoogleMap(
            markers: list.toSet(),
            zoomControlsEnabled: false,
            onLongPress: addMarkers,
            initialCameraPosition: _initialCameraPosition,
            myLocationButtonEnabled: true,
            onMapCreated: (c) {
              _controller = c;
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter source"
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter destination"
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

  void addMarkers(LatLng pos) {
    if (_origin == null || (_origin != null && _destination != null)) {
      list.clear();
      _origin = Marker(
        markerId: MarkerId("origin"),
        position: pos,
        infoWindow: InfoWindow(
          title: "Origin"
        )
      );
      _destination = null;
      list.add(_origin!);
    } else {
      _destination = Marker(
        markerId: MarkerId("destination"),
        position: pos,
        infoWindow: InfoWindow(
          title: "destination"
        )
      );
      DirectionsRepo dr = DirectionsRepo();
      dr.getDirections(origin: _origin!.position, destination: _destination!.position);
    }
  }
}