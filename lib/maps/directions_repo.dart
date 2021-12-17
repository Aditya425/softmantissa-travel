import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DirectionsRepo {
  Dio? _dio;
  String _baseUrl = "https://maps.googleapis.com/maps/api/directions/json?";
  String _apiKey = "AIzaSyBOcUH8Re3hhwdgw1GSxaBPwW_kUeOTBG4";

  DirectionsRepo() {
    if (_dio == null) {
      _dio = Dio();
    }
  }

  Future<void> getDirections({required LatLng origin, required LatLng destination}) async{
    var response = await _dio!.get(
      _baseUrl,
      queryParameters: {
        "origin" : "${origin.latitude}, ${origin.longitude}",
        "destination" : "${destination.latitude}, ${destination.longitude}",
        "key" : _apiKey
      }
    );
    print(response.data);
  }
}