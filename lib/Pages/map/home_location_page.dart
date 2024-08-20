import 'package:flutter/material.dart';
import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
import 'package:flutterproject/Pages/map/map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:grpc/grpc.dart';
import 'package:flutterproject/src/generated/location.pbgrpc.dart'; // Adjust the path accordingly

class HomeLocationPage extends StatefulWidget {
  final String kidId;

  HomeLocationPage({required this.kidId});

  @override
  _HomeLocationPageState createState() => _HomeLocationPageState();
}

class _HomeLocationPageState extends State<HomeLocationPage> {
  MapBoxNavigationViewController? _controller;
  double latitude = 37.7749;
  double longitude = -122.4194; // Default to San Francisco
  double radius = 200.0; // Default radius in meters

  Future<void> initialize() async {
    if (!mounted) return;
    // Get the user's current position
    try {
      final position = await _determinePosition();
      setState(() {
        latitude = position.latitude;
        longitude = position.longitude;
      });
    } catch (e) {
      print('Error getting location: $e');
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied.');
    }

    return await Geolocator.getCurrentPosition();
  }

  void _onMapCreated(MapBoxNavigationViewController controller) {
    _controller = controller;
  }

  void _updateHomeLocation() async {
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    final stub = LocationServiceClient(channel);

    final request = HomeLocation()
      ..kidId = widget.kidId
      ..latitude = latitude
      ..longitude = longitude
      ..radius = radius;

    try {
      await stub.updateHomeLocation(request);
      print('Home location updated successfully');
    } catch (e) {
      print('Failed to update home location: $e');
    } finally {
      await channel.shutdown();
    }
  }

  @override
  void initState() {
    initialize();
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Home Location'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _updateHomeLocation,
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: MapView(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home,
                    size: 50, color: const Color.fromARGB(255, 54, 130, 244)),
                SizedBox(height: radius / 2),
                Container(
                  width: radius,
                  height: radius,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Color.fromARGB(255, 52, 76, 216), width: 2.0),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100.0,
              color: Colors.grey[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Adjust Radius: ${radius.toStringAsFixed(0)} meters'),
                  Slider(
                    value: radius,
                    min: 50,
                    max: 500,
                    divisions: 9,
                    label: radius.toStringAsFixed(0),
                    onChanged: (value) {
                      setState(() {
                        radius = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
