/* import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:flutterproject/src/generated/location.pbgrpc.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class LocationService {
  late LocationServiceClient _client;
  late ClientChannel _channel;

  LocationService() {
    _channel = ClientChannel(
      'your_backend_address',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _client = LocationServiceClient(_channel);
  }

  Future<List<Location>> fetchMovementHistory(
      String kidId, DateTime startDate, DateTime endDate) async {
    final request = GetMovementHistoryRequest()
      ..kidId = kidId
      ..startDate = startDate.toIso8601String()
      ..endDate = endDate.toIso8601String();

    final response = await _client.getMovementHistory(request);
    return response.locations;
  }

  // Ensure you close the channel when done
  void shutdown() async {
    await _channel.shutdown();
  }
}

// Now, use this service in your Flutter UI

class MovementHistoryPage extends StatefulWidget {
  @override
  _MovementHistoryPageState createState() => _MovementHistoryPageState();
}

class _MovementHistoryPageState extends State<MovementHistoryPage> {
  LocationService _locationService = LocationService();
  List<Location> _movementHistory = [];

  @override
  void initState() {
    super.initState();
    _fetchHistory();
  }

  void _fetchHistory() async {
    try {
      // Assuming you have the kidId, startDate, and endDate
      final history = await _locationService.fetchMovementHistory(
          'kidId', DateTime.now().subtract(Duration(days: 1)), DateTime.now());
      setState(() {
        _movementHistory = history;
      });
    } catch (e) {
      print('Failed to fetch history: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movement History'),
      ),
      body: MapboxMap(
        accessToken: 'YOUR_MAPBOX_ACCESS_TOKEN',
        initialCameraPosition: CameraPosition(
          target: _movementHistory.isNotEmpty
              ? LatLng(_movementHistory.first.latitude,
                  _movementHistory.first.longitude)
              : LatLng(37.7749, -122.4194), // Default to San Francisco
          zoom: 14,
        ),
        onMapCreated: (controller) {
          // Add polyline for movement history
          controller.addLine(
            LineOptions(
              geometry: _movementHistory
                  .map((location) =>
                      LatLng(location.latitude, location.longitude))
                  .toList(),
              lineColor: "#FF0000",
              lineWidth: 4.0,
              lineOpacity: 0.8,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _locationService.shutdown();
    super.dispose();
  }
}
 */