import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  Future<Position> getPosition() async {
    print('wait');
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position = await Geolocator.getCurrentPosition();

    return position;
  }

  @override
  void initState() {
    super.initState();
    getPosition().then((Position myPos) {
      String currPosititon =
          'Latitude: ${myPos.latitude.toString()} - Longitude : {myPos.longitude.toString()}';

      setState(() {
        myPosition = currPosititon;
      });
    }).whenComplete(() => print('done'));
  }

  @override
  Widget build(BuildContext context) {
    final myWidget =
        myPosition == '' ? const CircularProgressIndicator() : Text(myPosition);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Location Krisna'),
      ),
      body: Center(
        child: myWidget,
      ),
    );
  }
}
