import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/addkidoptions/add_kid_options.dart';
import 'package:flutterproject/Pages/map/add_home_location_option.dart';
import 'package:flutterproject/Pages/map/map.dart';
import 'package:flutterproject/Pages/map/movement_history_page.dart';
import 'package:flutterproject/Pages/phonecall_page.dart';
import 'package:flutterproject/Pages/settingsboard/settings_page.dart';
import 'package:flutterproject/Resources/routes_manager.dart';
//import 'package:mapbox_gl/mapbox_gl.dart';
// import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _showAddKidOptions() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height *
            0.8, // Adjust the height as needed
        child: AddKidOptions(),
      ),
    );
  }

  void _AddhomeLocationOptions() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      builder: (context) => AddHomeLocationOption(),
    );
  }

  void _settingpage() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height *
            0.65, // Adjust the height as needed
        child: SettingsPage(),
      ),
    );
  }

  String? childPhoneNumber;

  void _addChildPhoneNumber() async {
    final selectedPhoneNumber = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddChildPhonePage()),
    );
    if (selectedPhoneNumber != null) {
      setState(() {
        childPhoneNumber = selectedPhoneNumber;
      });
    }
  }

  // void _callChild() {
  //   if (childPhoneNumber != null) {
  //     _makePhoneCall('tel:$childPhoneNumber');
  //   } else {
  //     _addChildPhoneNumber();
  //   }
  // }

  // Future<void> _makePhoneCall(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
/* 
  void _viewMovementHistory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MovementHistoryPage(),
      ),
    );
  }

  // Example child movement history
  List<LatLng> movementHistory = [
    LatLng(37.7749, -122.4194),
    LatLng(37.7750, -122.4184),
    LatLng(37.7760, -122.4174),
    // Add more points as needed
  ]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map view
          Positioned.fill(
            child: MapView(),
          ),
          // DraggableScrollableSheet for the bottom sheet
          DraggableScrollableSheet(
            initialChildSize: 0.2, // Initial size of the bottom sheet
            minChildSize: 0.1, // Minimum size of the bottom sheet
            maxChildSize: 0.9, // Maximum size of the bottom sheet
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 220, 225, 231),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      // Drag indicator
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      // Top row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(Icons.mic, size: 30),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context,
                                  Routes
                                      .micListening); // Handle mic button press
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.notifications_active,
                                size: 30,
                                color: Color.fromARGB(255, 87, 87, 87)),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Routes.volumeNotification);
                            },
                          ),
                          IconButton(
                              icon: Icon(Icons.location_on, size: 30),
                              onPressed: _AddhomeLocationOptions),
                        ],
                      ),
                      SizedBox(height: 5), // Space between rows
                      // Bottom row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(Icons.videogame_asset, size: 30),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context,
                                  Routes
                                      .usageStats); // Handle games button press
                            },
                          ),
                          // IconButton(
                          //   icon: Icon(Icons.phone, size: 30),
                          //   // onPressed: _callChild,
                          // ),
                          IconButton(
                            icon: Icon(Icons.add, size: 50),
                            onPressed: _showAddKidOptions,
                          ),
                          IconButton(
                            icon: Icon(Icons.chat, size: 30),
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.chat);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.settings, size: 30),
                            onPressed: _settingpage,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {}, // _viewMovementHistory,
                        child: Text('View Movement History'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ), // Additional content here if needed
                      Container(
                        height: 550, // Adjust this height as needed
                        color: Colors.grey[200], // Just for illustration
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
